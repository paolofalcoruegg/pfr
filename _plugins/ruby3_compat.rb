# Ruby 3 compatibility shim for Jekyll 3.8.4.
#
# Ruby 3.0 stopped auto-converting a trailing Hash into keyword arguments.
# Jekyll 3.8.4 passes its file-read options to File.read positionally, where
# Ruby now reads them as the `length` argument, so every file with front matter
# fails with "no implicit conversion of Hash into Integer".
#
# The two affected call sites are convertible.rb:41 and document.rb:449. Both
# are reproduced below with a keyword splat instead. Delete this file when
# upgrading to Jekyll 3.9+ or 4.x, which fixed this upstream.

module Ruby3Compat
  # File.read only accepts symbol keys as keywords, but Jekyll's read options
  # may carry string keys depending on how `encoding` was configured.
  def self.symbolize(hash)
    (hash || {}).each_with_object({}) { |(key, value), out| out[key.to_sym] = value }
  end

  def self.read_opts(site, opts)
    symbolize(Jekyll::Utils.merged_file_read_opts(site, opts))
  end
end

module Jekyll
  module Convertible
    def read_yaml(base, name, opts = {})
      filename = File.join(base, name)

      begin
        self.content = File.read(@path || site.in_source_dir(base, name),
                                 **Ruby3Compat.read_opts(site, opts))
        if content =~ Document::YAML_FRONT_MATTER_REGEXP
          self.content = $POSTMATCH
          self.data = SafeYAML.load(Regexp.last_match(1))
        end
      rescue Psych::SyntaxError => e
        Jekyll.logger.warn "YAML Exception reading #{filename}: #{e.message}"
        raise e if site.config["strict_front_matter"]
      rescue StandardError => e
        Jekyll.logger.warn "Error reading file #{filename}: #{e.message}"
        raise e if site.config["strict_front_matter"]
      end

      self.data ||= {}

      validate_data! filename
      validate_permalink! filename

      self.data
    end
  end

  class Document
    private

    def read_content(opts)
      self.content = File.read(path, **Ruby3Compat.read_opts(site, opts))
      if content =~ YAML_FRONT_MATTER_REGEXP
        self.content = $POSTMATCH
        data_file = SafeYAML.load(Regexp.last_match(1))
        merge_data!(data_file, :source => "YAML front matter") if data_file
      end
    end
  end

  module Tags
    class IncludeTag
      # IncludeRelativeTag inherits this, so both tags are covered.
      def read_file(file, context)
        File.read(file, **Ruby3Compat.symbolize(file_read_opts(context)))
      end
    end
  end
end

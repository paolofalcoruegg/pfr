source 'https://rubygems.org'

gem 'jekyll', '3.8.4'

# Unbundled from Ruby's stdlib in 3.0, but Jekyll 3.x still expects both:
# `webrick` backs `jekyll serve`, `rexml` backs kramdown's HTML parser.
gem 'webrick', '~> 1.8'
gem 'rexml', '~> 3.2'

# Ruby 3.1+ ships Psych 4, whose `load` signature broke safe_yaml. Without this
# pin, every file's front matter fails with "no implicit conversion of Hash into
# Integer". Drop it when moving to Jekyll 4.
gem 'psych', '~> 3.3'

group :jekyll_plugins do
  gem 'jekyll-paginate'
  gem 'jekyll-sitemap'
end
# paolofalcoruegg.com

Personal portfolio site. Jekyll 3.8.4, based on the *Board* theme
(the theme's own docs are in `_README.md`).

Live at <https://www.paolofalcoruegg.com>.

---

## Running it locally

### Prerequisites

macOS ships Ruby 2.6, which **cannot** build this site — its gem directory is
root-owned and SIP-protected, and the `ffi` version it resolves fails to compile
on Apple Silicon. Install a modern Ruby instead:

    brew install ruby@3.2

Homebrew keeps `ruby@3.2` keg-only, so it is not on your `PATH` by default. Add
this to `~/.zshrc`:

    export PATH="/opt/homebrew/opt/ruby@3.2/bin:$PATH"

Without that line `bundle` silently falls back to system Ruby 2.6 and fails.
Check you have the right one with `ruby -v` — it should say 3.2.x, not 2.6.x.

### First-time setup

    bundle config set --local path vendor/bundle
    bundle install

Gems install into `./vendor/bundle`, which is gitignored.

### Day to day

    bundle exec jekyll serve

Then open <http://127.0.0.1:4000>. The server watches for changes and rebuilds
automatically; press Ctrl-C to stop. Edits to `_config.yml` are the exception —
those need a restart.

To build without serving:

    bundle exec jekyll build      # writes to _site/

---

## Layout

    _pages/       content pages     (about, services, thanks)
    _projects/    project pages     (one file each)
    _layouts/     page templates
    _includes/    partials
    _sass/        styles, compiled via css/style.scss
    _data/        site data
    assets/       images, fonts
    _plugins/     local build shims — see below

---

## Deployment

Pushing to `master` deploys. GitHub Pages builds the site itself in "deploy from
a branch" mode; there is no Actions workflow. The custom domain comes from
`CNAME`, and HTTPS is enforced.

Two things about the Pages build are worth knowing, because it does **not** work
the way the local build does:

**Pages ignores `Gemfile` and `Gemfile.lock`.** It builds with its own pinned
`github-pages` gem set (currently Jekyll 3.10.x), so the versions locked here
only affect your machine. Changing a gem locally cannot break the deploy, and
cannot fix it either.

One consequence worth remembering: the two builds are not identical. Locally you
render with Jekyll 3.8.4 and kramdown 1.17; Pages renders with Jekyll 3.10 and
kramdown 2.4, where GFM support moved into a separate parser gem. Markdown
edge cases can therefore look slightly different in production than in preview.
If a page renders oddly once deployed, check it against the Pages versions
before assuming the content is wrong.

**Pages ignores `_plugins/`.** It builds in safe mode, so anything in that
directory is skipped remotely. Only plugins on the
[Pages allowlist](https://pages.github.com/versions/) run, which is why
`_config.yml` sticks to `jekyll-paginate` and `jekyll-sitemap`.

That second point is what `_plugins/ruby3_compat.rb` relies on. Jekyll 3.8.4
predates Ruby 3 and passes options to `File.read` positionally, which Ruby 3
misreads as a length argument. The shim redefines the three affected methods so
local builds work; remotely it is neither loaded nor needed, since Pages runs a
newer Jekyll on its own Ruby. Delete it when upgrading to Jekyll 3.9+ or 4.x.

For the same reason, `Gemfile` pins `psych ~> 3.3` (Psych 4 broke `safe_yaml`)
and depends on `webrick` and `rexml`, which left Ruby's stdlib in 3.0. All of
these exist purely to keep Jekyll 3.8.4 running locally and disappear on a
Jekyll 4.x upgrade.

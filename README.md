# geetham.github.io

Personal website built with [Jekyll](https://jekyllrb.com) and hosted on
[GitHub Pages](https://pages.github.com).

## Prerequisites

- Ruby (3.x) with development headers
- Bundler (`gem install bundler`)

On Debian/Ubuntu the system packages are:

```bash
sudo apt-get update
sudo apt-get install -y ruby-full build-essential zlib1g-dev
```

## Local development

Install dependencies (gems are installed into `vendor/bundle`, so no `sudo` is
required):

```bash
bundle config set --local path vendor/bundle
bundle install
```

Serve the site locally with live rebuilding:

```bash
bundle exec jekyll serve --host 0.0.0.0 --port 4000
```

Then open <http://localhost:4000>. Jekyll rebuilds the site automatically when
you edit content.

## Project structure

- `_config.yml` — site configuration (title, theme, plugins).
- `index.md` — home page.
- `about.md` — about page.
- `Gemfile` — pins the `github-pages` gem so local builds match production.

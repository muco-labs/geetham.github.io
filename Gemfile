source "https://rubygems.org"

# The github-pages gem pins Jekyll and every plugin to the exact versions
# GitHub Pages runs in production, so local development matches the live site.
gem "github-pages", group: :jekyll_plugins

# Timezone data for platforms that do not ship it with the OS.
platforms :windows, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Faster file watching on Windows.
gem "wdm", "~> 0.1.1", platforms: [:windows]

# Required for newer Rubies that no longer bundle webrick.
gem "webrick", "~> 1.8"

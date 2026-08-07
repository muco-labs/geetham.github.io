#!/usr/bin/env bash
set -euo pipefail

# Install the Ruby toolchain if it is not already present. When the environment
# uses a prebuilt image/snapshot this runs once at build time; on a plain
# session it is a fast no-op whenever Ruby is already installed.
if ! command -v ruby >/dev/null 2>&1; then
  export DEBIAN_FRONTEND=noninteractive
  sudo apt-get update
  sudo apt-get install -y --no-install-recommends \
    ruby-full build-essential zlib1g-dev
fi

# Ubuntu's Ruby packages ship bundler only as `bundler3.x`, so make sure a
# plain `bundle` executable is on PATH.
if ! command -v bundle >/dev/null 2>&1; then
  sudo gem install bundler --no-document
fi

# Install the project's gems into a local, sudo-free path.
bundle config set --local path vendor/bundle
bundle install

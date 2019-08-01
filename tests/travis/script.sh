#!/usr/bin/env bash

# NAME
#     script.sh - Run Cog tests.
#
# SYNOPSIS
#     script.sh
#
# DESCRIPTION
#     Runs automated tests.

cd "$(dirname "$0")"

# Reuse ORCA's own includes.
source ../../../orca/bin/travis/_includes.sh

# Only run on Gulp test.
[[ "$COG_GULP_TEST" ]] || exit 0

cd "$TRAVIS_BUILD_DIR/starterkit"

node --version
npm --version
nvm use 8.9
npm install -g gulp-cli
npm run install-tools

gulp

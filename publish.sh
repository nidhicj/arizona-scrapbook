#!/bin/sh
# Publish the edited page to https://nidhicj.github.io/arizona-scrapbook/ (live ~1 min later).
# Only index.html and sw.js are published; your trip data is never touched by this.
set -e
cd "$(dirname "$0")"
git add index.html sw.js
git commit -m "${1:-Update page}" || { echo "Nothing changed."; exit 0; }
git pull --rebase -q
git push -q
echo "Published. Live in about a minute: https://nidhicj.github.io/arizona-scrapbook/"

#!/bin/bash
REPO="https://github.com/Kawoutie/Teast.git"
BRANCH="main"
FOLDER="downloads/20260528_170332_url"
git clone --depth 1 --filter=blob:none --no-checkout "$REPO" tmp
cd tmp
git sparse-checkout init --cone
git sparse-checkout set "$FOLDER"
git checkout
echo "Done: tmp/$FOLDER"

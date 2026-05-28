#!/bin/bash
REPO="https://github.com/Kawoutie/Teast.git"
BRANCH="main"
FOLDER="downloads/20260528_132557_Dopamine-3.0.4.AppImage"
git clone --depth 1 --filter=blob:none --no-checkout "$REPO" tmp
cd tmp
git sparse-checkout init --cone
git sparse-checkout set "$FOLDER"
git checkout
echo "Done: tmp/$FOLDER"

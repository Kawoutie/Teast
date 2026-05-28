#!/bin/bash
REPO="https://github.com/Kawoutie/Teast.git"
BRANCH="main"
FOLDER="downloads/20260528_162530_the_strength_of_gemini_omni_is_in_video"
git clone --depth 1 --filter=blob:none --no-checkout "$REPO" tmp
cd tmp
git sparse-checkout init --cone
git sparse-checkout set "$FOLDER"
git checkout
echo "Done: tmp/$FOLDER"

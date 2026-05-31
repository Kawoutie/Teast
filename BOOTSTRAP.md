# Git-Only Access

If raw.githubusercontent.com is blocked, use git.

## Browse history
```bash
git clone --depth 1 --filter=blob:none --no-checkout https://github.com/Kawoutie/Teast.git
cd Teast
git sparse-checkout init --cone
git sparse-checkout set history/ BOOTSTRAP.md INDEX.md
git checkout
cat history/README.md
```

## Download a folder
```bash
git sparse-checkout add downloads/FOLDER_NAME/
git checkout
```

## Use the download script
```bash
bash downloads/FOLDER_NAME/download.sh
```

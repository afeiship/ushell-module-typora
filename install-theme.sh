#!/usr/bin/env bash

## define const:
TYPORA_THEME_LINK=https://github.com/typora/typora-theme-gallery/raw/gh-pages/media/theme/scribble/scribble.zip;
TYPORA_THEME_DIR="$HOME/Library/Application Support/abnerworks.Typora/themes";

## get ext && filename:
filename=$(basename "$TYPORA_THEME_LINK");
extension="${filename##*.}";
fname="${filename%.*}";

# echo $filename;       ## scribble.zip
# echo $extension;      ## zip
# echo $fname;       ## scribble

## download file:
wget $TYPORA_THEME_LINK -P "${TYPORA_THEME_DIR}";

# unzip file: if is a css file:
if [ $extension == 'zip' ]; then
    echo 'unzip file...';
    unzip -q "${TYPORA_THEME_DIR}/${filename}" -d "${TYPORA_THEME_DIR}";

    ## clean:
    mv "${TYPORA_THEME_DIR}/${fname}" "${TYPORA_THEME_DIR}/${fname}_bak";
    mv "${TYPORA_THEME_DIR}"/"${fname}_bak"/* "${TYPORA_THEME_DIR}";
    rm -rf "${TYPORA_THEME_DIR}/${fname}_bak";
    rm -rf "${TYPORA_THEME_DIR}/${filename}";
    rm -rf "${TYPORA_THEME_DIR}/__MACOSX";
fi

##  TEST:
###   typo-install-theme https://github.com/ujwaljain/typora-theme-gallery/blob/gh-pages/media/theme/dropbox/dropbox.css
###   typo-install-theme https://github.com/typora/typora-theme-gallery/raw/gh-pages/media/theme/scribble/scribble.zip
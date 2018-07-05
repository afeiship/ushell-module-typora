#!/usr/bin/env bash

TYPORA_THEME_LINK=$1;

# echo $THEME_LINK;

cd "~/Library/Application\ Support/abnerworks.Typora/themes";
wget $TYPORA_THEME_LINK;
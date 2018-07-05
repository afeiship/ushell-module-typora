#!/usr/bin/env bash

TYPORA_THEME_LINK=$1;
TYPORA_THEME_DIR="~/Library/Application\ Support/abnerworks.Typora/themes";

wget $TYPORA_THEME_LINK -P $TYPORA_THEME_DIR;
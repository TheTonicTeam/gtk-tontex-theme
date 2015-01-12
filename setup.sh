#!/bin/bash
VERSION="0.1(BUILD-20141214)"
USR_THEME_PREFIX=/usr/share/themes/gtk-tontex-theme
[ -d "$USR_THEME_PREFIX" ] && rm -rf $USR_THEME_PREFIX
mkdir -pv "$USR_THEME_PREFIX" && cp -rf data/* "$USR_THEME_PREFIX"
echo "gtk-tontex-theme $VERSION installed."
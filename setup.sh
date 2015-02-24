#!/bin/bash
VERSION="0.2(BUILD-20150224)"
USR_THEME_PREFIX=/usr/share/themes/Tonic-Vertex
USR_GNOME_THEME_PREFIX=/usr/share/themes/Tonic-Vertex-Gnome
echo "Installing Tonic-Vertex..."
[ -d "$USR_THEME_PREFIX" ] && sudo rm -rf $USR_THEME_PREFIX
sudo mkdir -pv "$USR_THEME_PREFIX" && sudo cp -rf data/* "$USR_THEME_PREFIX"
echo "Configuring theme..."
gsettings set org.gnome.desktop.interface gtk-theme "Tonic-Vertex"
gsettings set org.gnome.desktop.wm.preferences theme "Tonic-Vertex"
echo "Installing Tonic-Vertex-Gnome-Shell..."
[ -d "$USR_GNOME_THEME_PREFIX" ] && sudo rm -rf $USR_GNOME_THEME_PREFIX
sudo mkdir -pv "$USR_GNOME_THEME_PREFIX" && sudo cp -rf shell/* $USR_GNOME_THEME_PREFIX
echo "Configuring shell theme..."
sudo chmod -R 755 $USR_GNOME_THEME_PREFIX
gsettings set org.gnome.shell.extensions.user-theme name "Tonic-Vertex-Gnome"
echo "Tonic-Vertex $VERSION installed."


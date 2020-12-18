#!/bin/bash

sudo apt update
sudo apt install wget curl make

# Downloading Anki
mkdir Downloads
cd ~/Downloads
wget https://github.com/ankitects/anki/releases/download/2.1.35/anki-2.1.35-linux-amd64.tar.bz2
tar -xf anki-2.1.35-linux-amd64.tar.bz2
cd ./anki-2.1.35-linux-amd64.tar.bz2
sudo make install

# Anki's dependencies
sudo apt install mpv lame libxcb-xinerama0

# Bash aliases
cd ~
curl -O https://raw.githubusercontent.com/iliasbaker/dotfiles/main/.bash_aliases

# vimrc
cd ~
curl -O https://raw.githubusercontent.com/iliasbaker/dotfiles/main/.vimrc

# Desktop customisation
sudo apt install gnome-shell-extensions gnome-tweaks dconf-editor
cd ~/Downloads
git clone https://github.com/daniruiz/flat-remix-gnome.git
cd ./flat-remix-gnome
mv ./Flat-Remix-* ~/.themes

# Python
sudo apt install python-is-python3

# Greek keyboard
cd ~/Downloads
curl -O https://raw.githubusercontent.com/iliasbaker/oelfiles/master/keyboards/gr
sudo cp -r /usr/share/X11/xkb/symbols/gr /usr/share/X11/xkb/symbols/grBACKUP
sudo cp ~/Downloads/gr /usr/share/X11/xkb/symbols/gr

# Russian keyboard and compose file
cd ~/Downloads
curl -O https://raw.githubusercontent.com/iliasbaker/oelfiles/master/keyboards/ru
sudo cp -r /usr/share/X11/xkb/symbols/ru /usr/share/X11/xkb/symbols/ruBACKUP
sudo cp ~/Downloads/ru /usr/share/X11/xkb/symbols/ru
touch ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_ie> : \"э\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_IE> : \"Э\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_ze> : \"ж\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_ZE> : \"Ж\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_sha> : \"щ\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_SHA> : \"Щ\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_tse> : \"ч\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_TSE> : \"Ч\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_o> : \"ё\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_O> : \"Ё\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_u> : \"ю\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_U> : \"Ю\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_a> : \"я\"" >> ~/.XCompose
echo "<dead_diaeresis> <Cyrillic_A> : \"Я\"" >> ~/.XCompose

# Matter.py
sudo apt install inkscape
cd ~/Documents
wget https://github.com/mateosss/matter/releases/latest/download/matter.zip
unzip matter.zip
cd ./matter/matter
sudo ./matter.py -i ubuntu folder _ _ _ _ microsoft-windows cog

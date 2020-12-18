gsettings set org.gnome.shell.extensions.dash-to-dock apply-custom-theme false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide false
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 34
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-shrink true
gsettings set org.gnome.shell.extensions.user-theme name 'Flat-Remix-Blue-Dark-fullPanel'
gsettings set org.gnome.desktop.interface gtk-theme 'Flat-Remix-GTK-Blue-Solid'
gsettings set org.gnome.shell.extensions.desktop-icons show-home false
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false
gsettings set org.gnome.shell.extensions.dash-to-dock force-straight-corner true
gsettings set org.gnome.shell.extensions.dash-to-dock pressure-threshold 25
cd ~/Pictures
wget "https://unsplash.com/photos/DJmj7op4P-M/download?force=true"
sudo apt install numix-icon-theme-circle
cd ~/Downloads
git clone https://github.com/vinceliuice/Tela-circle-icon-theme.git
cd Tela-circle-icon-theme
./install.sh -a

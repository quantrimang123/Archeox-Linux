# Copy over ARCHEOX configs
mkdir -p ~/.config
cp -R ~/.local/share/ARCHEOX/config/* ~/.config/

# Use default bashrc from ARCHEOX
cp ~/.local/share/ARCHEOX/default/bashrc ~/.bashrc

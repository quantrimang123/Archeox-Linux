# Copy over Archeox configs
mkdir -p ~/.config
cp -R ~/.local/share/Archeox/config/* ~/.config/

# Use default bashrc from Archeox
cp ~/.local/share/Archeox/default/bashrc ~/.bashrc

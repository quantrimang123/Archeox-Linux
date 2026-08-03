# Copy over archeox configs
mkdir -p ~/.config
cp -R ~/.local/share/archeox/config/* ~/.config/

# Use default bashrc from archeox
cp ~/.local/share/archeox/default/bashrc ~/.bashrc

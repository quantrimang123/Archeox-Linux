# Copy over ILV configs
mkdir -p ~/.config
cp -R ~/.local/share/ILV/config/* ~/.config/

# Use default bashrc from ILV
cp ~/.local/share/ILV/default/bashrc ~/.bashrc

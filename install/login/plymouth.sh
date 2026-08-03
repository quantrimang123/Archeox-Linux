if [[ $(plymouth-set-default-theme) != "Archeox" ]]; then
  sudo cp -r "$HOME/.local/share/Archeox/default/plymouth" /usr/share/plymouth/themes/Archeox/
  sudo plymouth-set-default-theme Archeox
fi

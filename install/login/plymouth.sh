if [[ $(plymouth-set-default-theme) != "ARCHEOX" ]]; then
  sudo cp -r "$HOME/.local/share/ARCHEOX/default/plymouth" /usr/share/plymouth/themes/ARCHEOX/
  sudo plymouth-set-default-theme ARCHEOX
fi

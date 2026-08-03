if [[ $(plymouth-set-default-theme) != "archeox" ]]; then
  sudo cp -r "$HOME/.local/share/archeox/default/plymouth" /usr/share/plymouth/themes/archeox/
  sudo plymouth-set-default-theme archeox
fi

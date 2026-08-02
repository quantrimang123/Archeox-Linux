if [[ $(plymouth-set-default-theme) != "ILV" ]]; then
  sudo cp -r "$HOME/.local/share/ILV/default/plymouth" /usr/share/plymouth/themes/ILV/
  sudo plymouth-set-default-theme ILV
fi

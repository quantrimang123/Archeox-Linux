# Show installation environment variables
gum log --level info "Installation Environment:"

env | grep -E "^(ARCHEOX_"CHROOT_INSTALL|ARCHEOX_"ONLINE_INSTALL|ARCHEOX_"USER_NAME|ARCHEOX_"USER_EMAIL|USER|HOME|ARCHEOX_"REPO|ARCHEOX_"REF|ARCHEOX_"PATH)=" | sort | while IFS= read -r var; do
  gum log --level info "  $var"
done

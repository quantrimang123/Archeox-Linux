# Show installation environment variables
gum log --level info "Installation Environment:"

env | grep -E "^(ARCHEOX_CHROOT_INSTALL|ARCHEOX_ONLINE_INSTALL|ARCHEOX_USER_NAME|ARCHEOX_USER_EMAIL|USER|HOME|ARCHEOX_REPO|ARCHEOX_REF|ARCHEOX_PATH)=" | sort | while IFS= read -r var; do
  gum log --level info "  $var"
done

# Show installation environment variables
gum log --level info "Installation Environment:"

env | grep -E "^(archeox_CHROOT_INSTALL|archeox_ONLINE_INSTALL|archeox_USER_NAME|archeox_USER_EMAIL|USER|HOME|archeox_REPO|archeox_REF|archeox_PATH)=" | sort | while IFS= read -r var; do
  gum log --level info "  $var"
done

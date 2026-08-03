# Show installation environment variables
gum log --level info "Installation Environment:"

env | grep -E "^(Archeox_CHROOT_INSTALL|Archeox_ONLINE_INSTALL|Archeox_USER_NAME|Archeox_USER_EMAIL|USER|HOME|Archeox_REPO|Archeox_REF|Archeox_PATH)=" | sort | while IFS= read -r var; do
  gum log --level info "  $var"
done

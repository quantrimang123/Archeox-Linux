# Show installation environment variables
gum log --level info "Installation Environment:"

env | grep -E "^(ILV_CHROOT_INSTALL|ILV_ONLINE_INSTALL|ILV_USER_NAME|ILV_USER_EMAIL|USER|HOME|ILV_REPO|ILV_REF|ILV_PATH)=" | sort | while IFS= read -r var; do
  gum log --level info "  $var"
done

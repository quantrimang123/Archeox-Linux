# Install all base packages
mapfile -t packages < <(grep -v '^#' "$ILV_INSTALL/ILV-base.packages" | grep -v '^$')
ILV-pkg-add "${packages[@]}"

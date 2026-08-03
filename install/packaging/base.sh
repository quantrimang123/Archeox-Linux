# Install all base packages
mapfile -t packages < <(grep -v '^#' "$ARCHEOX_INSTALL/ARCHEOX-base.packages" | grep -v '^$')
ARCHEOX-pkg-add "${packages[@]}"

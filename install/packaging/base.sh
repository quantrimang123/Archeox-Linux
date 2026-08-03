# Install all base packages
mapfile -t packages < <(grep -v '^#' "$Archeox_INSTALL/Archeox-base.packages" | grep -v '^$')
Archeox-pkg-add "${packages[@]}"

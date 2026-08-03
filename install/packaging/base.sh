# Install all base packages
mapfile -t packages < <(grep -v '^#' "$archeox_INSTALL/archeox-base.packages" | grep -v '^$')
archeox-pkg-add "${packages[@]}"

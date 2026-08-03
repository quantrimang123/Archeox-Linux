#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eEo pipefail

# Define ARCHEOX locations
export ARCHEOX_PATH="$HOME/.local/share/ilv"
export ARCHEOX_INSTALL="$ARCHEOX_PATH/install"
export ARCHEOX_INSTALL_LOG_FILE="/var/log/ilv-install.log"
export PATH="$ARCHEOX_PATH/bin:$PATH"

# Install
source "$ARCHEOX_INSTALL/helpers/all.sh"
source "$ARCHEOX_INSTALL/preflight/all.sh"
source "$ARCHEOX_INSTALL/packaging/all.sh"
source "$ARCHEOX_INSTALL/config/all.sh"
source "$ARCHEOX_INSTALL/login/all.sh"
source "$ARCHEOX_INSTALL/post-install/all.sh"
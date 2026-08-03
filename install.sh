#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eEo pipefail

# Define Archeox locations
export Archeox_PATH="$HOME/.local/share/Archeox"
export Archeox_INSTALL="$Archeox_PATH/install"
export Archeox_INSTALL_LOG_FILE="/var/log/Archeox-install.log"
export PATH="$Archeox_PATH/bin:$PATH"

# Install
source "$Archeox_INSTALL/helpers/all.sh"
source "$Archeox_INSTALL/preflight/all.sh"
source "$Archeox_INSTALL/packaging/all.sh"
source "$Archeox_INSTALL/config/all.sh"
source "$Archeox_INSTALL/login/all.sh"
source "$Archeox_INSTALL/post-install/all.sh"
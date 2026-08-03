#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eEo pipefail

# Define archeox locations
export archeox_PATH="$HOME/.local/share/archeox"
export archeox_INSTALL="$archeox_PATH/install"
export archeox_INSTALL_LOG_FILE="/var/log/archeox-install.log"
export PATH="$archeox_PATH/bin:$PATH"

# Install
source "$archeox_INSTALL/helpers/all.sh"
source "$archeox_INSTALL/preflight/all.sh"
source "$archeox_INSTALL/packaging/all.sh"
source "$archeox_INSTALL/config/all.sh"
source "$archeox_INSTALL/login/all.sh"
source "$archeox_INSTALL/post-install/all.sh"
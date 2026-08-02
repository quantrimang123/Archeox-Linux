#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eEo pipefail

# Define ILV locations
export ILV_PATH="$HOME/.local/share/ilv"
export ILV_INSTALL="$ILV_PATH/install"
export ILV_INSTALL_LOG_FILE="/var/log/ilv-install.log"
export PATH="$ILV_PATH/bin:$PATH"

# Install
source "$ILV_INSTALL/helpers/all.sh"
source "$ILV_INSTALL/preflight/all.sh"
source "$ILV_INSTALL/packaging/all.sh"
source "$ILV_INSTALL/config/all.sh"
source "$ILV_INSTALL/login/all.sh"
source "$ILV_INSTALL/post-install/all.sh"
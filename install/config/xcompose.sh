# Set default XCompose that is triggered with CapsLock
tee ~/.XCompose >/dev/null <<EOF
# Run ARCHEOX-restart-xcompose to apply changes

# Include fast emoji access
include "%H/.local/share/ARCHEOX/default/xcompose"

# Identification
<Multi_key> <space> <n> : "$ARCHEOX_USER_NAME"
<Multi_key> <space> <e> : "$ARCHEOX_USER_EMAIL"
EOF

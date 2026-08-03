# Set default XCompose that is triggered with CapsLock
tee ~/.XCompose >/dev/null <<EOF
# Run Archeox-restart-xcompose to apply changes

# Include fast emoji access
include "%H/.local/share/Archeox/default/xcompose"

# Identification
<Multi_key> <space> <n> : "$Archeox_USER_NAME"
<Multi_key> <space> <e> : "$Archeox_USER_EMAIL"
EOF

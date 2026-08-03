# Set default XCompose that is triggered with CapsLock
tee ~/.XCompose >/dev/null <<EOF
# Run archeox-restart-xcompose to apply changes

# Include fast emoji access
include "%H/.local/share/archeox/default/xcompose"

# Identification
<Multi_key> <space> <n> : "$archeox_USER_NAME"
<Multi_key> <space> <e> : "$archeox_USER_EMAIL"
EOF

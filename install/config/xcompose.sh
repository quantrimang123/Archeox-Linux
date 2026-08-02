# Set default XCompose that is triggered with CapsLock
tee ~/.XCompose >/dev/null <<EOF
# Run ILV-restart-xcompose to apply changes

# Include fast emoji access
include "%H/.local/share/ILV/default/xcompose"

# Identification
<Multi_key> <space> <n> : "$ILV_USER_NAME"
<Multi_key> <space> <e> : "$ILV_USER_EMAIL"
EOF

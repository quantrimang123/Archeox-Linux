#!/bin/bash

# Ensure Walker service is started automatically on boot
mkdir -p ~/.config/autostart/
cp $ILV_PATH/default/walker/walker.desktop ~/.config/autostart/

# And is restarted if it crashes or is killed
mkdir -p ~/.config/systemd/user/app-walker@autostart.service.d/
cp $ILV_PATH/default/walker/restart.conf ~/.config/systemd/user/app-walker@autostart.service.d/restart.conf

# Create pacman hook to restart walker after updates
sudo mkdir -p /etc/pacman.d/hooks
sudo tee /etc/pacman.d/hooks/walker-restart.hook > /dev/null << EOF
[Trigger]
Type = Package
Operation = Upgrade
Target = walker
Target = walker-debug
Target = elephant*

[Action]
Description = Restarting Walker services after system update
When = PostTransaction
Exec = $ILV_PATH/bin/ILV-restart-walker
EOF

# Link the visual theme menu config
mkdir -p ~/.config/elephant/menus
ln -snf $ILV_PATH/default/elephant/ILV_themes.lua ~/.config/elephant/menus/ILV_themes.lua
ln -snf $ILV_PATH/default/elephant/ILV_background_selector.lua ~/.config/elephant/menus/ILV_background_selector.lua
ln -snf $ILV_PATH/default/elephant/ILV_unlocks.lua ~/.config/elephant/menus/ILV_unlocks.lua

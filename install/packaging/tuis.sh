ICON_DIR="$HOME/.local/share/applications/icons"

Archeox-tui-install "Disk Usage" "bash -c 'dust -r; read -n 1 -s'" float "$ICON_DIR/Disk Usage.png"
Archeox-tui-install "Docker" "lazydocker" tile "$ICON_DIR/Docker.png"

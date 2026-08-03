ARCHEOX_MIGRATIONS_STATE_PATH=~/.local/state/ARCHEOX/migrations
mkdir -p $ARCHEOX_MIGRATIONS_STATE_PATH

for file in ~/.local/share/ARCHEOX/migrations/*.sh; do
  touch "$ARCHEOX_MIGRATIONS_STATE_PATH/$(basename "$file")"
done

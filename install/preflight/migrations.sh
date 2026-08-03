ARCHEOX_"MIGRATIONS_STATE_PATH=~/.local/state/archeox/migrations
mkdir -p $ARCHEOX_"MIGRATIONS_STATE_PATH

for file in ~/.local/share/archeox/migrations/*.sh; do
  touch "$ARCHEOX_"MIGRATIONS_STATE_PATH/$(basename "$file")"
done

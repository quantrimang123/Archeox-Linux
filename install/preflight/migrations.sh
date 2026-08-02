OMARCHY_MIGRATIONS_STATE_PATH=~/.local/state/ILV/migrations
mkdir -p $OMARCHY_MIGRATIONS_STATE_PATH

for file in ~/.local/share/ILV/migrations/*.sh; do
  touch "$OMARCHY_MIGRATIONS_STATE_PATH/$(basename "$file")"
done

ILV_MIGRATIONS_STATE_PATH=~/.local/state/ILV/migrations
mkdir -p $ILV_MIGRATIONS_STATE_PATH

for file in ~/.local/share/ILV/migrations/*.sh; do
  touch "$ILV_MIGRATIONS_STATE_PATH/$(basename "$file")"
done

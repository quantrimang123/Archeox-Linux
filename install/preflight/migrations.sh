Archeox_MIGRATIONS_STATE_PATH=~/.local/state/Archeox/migrations
mkdir -p $Archeox_MIGRATIONS_STATE_PATH

for file in ~/.local/share/Archeox/migrations/*.sh; do
  touch "$Archeox_MIGRATIONS_STATE_PATH/$(basename "$file")"
done

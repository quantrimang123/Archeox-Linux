archeox_MIGRATIONS_STATE_PATH=~/.local/state/archeox/migrations
mkdir -p $archeox_MIGRATIONS_STATE_PATH

for file in ~/.local/share/archeox/migrations/*.sh; do
  touch "$archeox_MIGRATIONS_STATE_PATH/$(basename "$file")"
done

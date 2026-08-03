# Place in each assistant's global skills directory so the ARCHEOX skill is available on first install
mkdir -p ~/.agents/skills ~/.claude/skills ~/.codex/skills ~/.pi/agent/skills
ln -sfn "$ARCHEOX_PATH/default/archeox-skill" ~/.agents/skills/archeox
ln -sfn "$ARCHEOX_PATH/default/archeox-skill" ~/.claude/skills/archeox
ln -sfn "$ARCHEOX_PATH/default/archeox-skill" ~/.codex/skills/archeox
ln -sfn "$ARCHEOX_PATH/default/archeox-skill" ~/.pi/agent/skills/archeox

# Place in each assistant's global skills directory so the ARCHEOX skill is available on first install
mkdir -p ~/.agents/skills ~/.claude/skills ~/.codex/skills ~/.pi/agent/skills
ln -sfn "$ARCHEOX_PATH/default/ARCHEOX-skill" ~/.agents/skills/ARCHEOX
ln -sfn "$ARCHEOX_PATH/default/ARCHEOX-skill" ~/.claude/skills/ARCHEOX
ln -sfn "$ARCHEOX_PATH/default/ARCHEOX-skill" ~/.codex/skills/ARCHEOX
ln -sfn "$ARCHEOX_PATH/default/ARCHEOX-skill" ~/.pi/agent/skills/ARCHEOX

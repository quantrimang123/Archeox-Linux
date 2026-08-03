# Place in each assistant's global skills directory so the archeox skill is available on first install
mkdir -p ~/.agents/skills ~/.claude/skills ~/.codex/skills ~/.pi/agent/skills
ln -sfn "$archeox_PATH/default/archeox-skill" ~/.agents/skills/archeox
ln -sfn "$archeox_PATH/default/archeox-skill" ~/.claude/skills/archeox
ln -sfn "$archeox_PATH/default/archeox-skill" ~/.codex/skills/archeox
ln -sfn "$archeox_PATH/default/archeox-skill" ~/.pi/agent/skills/archeox

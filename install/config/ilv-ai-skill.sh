# Place in each assistant's global skills directory so the Archeox skill is available on first install
mkdir -p ~/.agents/skills ~/.claude/skills ~/.codex/skills ~/.pi/agent/skills
ln -sfn "$Archeox_PATH/default/Archeox-skill" ~/.agents/skills/Archeox
ln -sfn "$Archeox_PATH/default/Archeox-skill" ~/.claude/skills/Archeox
ln -sfn "$Archeox_PATH/default/Archeox-skill" ~/.codex/skills/Archeox
ln -sfn "$Archeox_PATH/default/Archeox-skill" ~/.pi/agent/skills/Archeox

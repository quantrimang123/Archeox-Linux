# Place in each assistant's global skills directory so the ILV skill is available on first install
mkdir -p ~/.agents/skills ~/.claude/skills ~/.codex/skills ~/.pi/agent/skills
ln -sfn "$ILV_PATH/default/ILV-skill" ~/.agents/skills/ILV
ln -sfn "$ILV_PATH/default/ILV-skill" ~/.claude/skills/ILV
ln -sfn "$ILV_PATH/default/ILV-skill" ~/.codex/skills/ILV
ln -sfn "$ILV_PATH/default/ILV-skill" ~/.pi/agent/skills/ILV

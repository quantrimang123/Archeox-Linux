# Set identification from install inputs
if [[ -n ${ILV_USER_NAME//[[:space:]]/} ]]; then
  git config --global user.name "$ILV_USER_NAME"
fi

if [[ -n ${ILV_USER_EMAIL//[[:space:]]/} ]]; then
  git config --global user.email "$ILV_USER_EMAIL"
fi

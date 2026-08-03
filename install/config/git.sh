# Set identification from install inputs
if [[ -n ${ARCHEOX_USER_NAME//[[:space:]]/} ]]; then
  git config --global user.name "$ARCHEOX_USER_NAME"
fi

if [[ -n ${ARCHEOX_USER_EMAIL//[[:space:]]/} ]]; then
  git config --global user.email "$ARCHEOX_USER_EMAIL"
fi

# Set identification from install inputs
if [[ -n ${Archeox_USER_NAME//[[:space:]]/} ]]; then
  git config --global user.name "$Archeox_USER_NAME"
fi

if [[ -n ${Archeox_USER_EMAIL//[[:space:]]/} ]]; then
  git config --global user.email "$Archeox_USER_EMAIL"
fi

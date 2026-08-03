# Set identification from install inputs
if [[ -n ${archeox_USER_NAME//[[:space:]]/} ]]; then
  git config --global user.name "$archeox_USER_NAME"
fi

if [[ -n ${archeox_USER_EMAIL//[[:space:]]/} ]]; then
  git config --global user.email "$archeox_USER_EMAIL"
fi

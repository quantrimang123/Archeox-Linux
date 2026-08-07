#!/bin/bash

set -e

export ARCHEOX_ONLINE_INSTALL=true

ansi_art=' 
 █████╗  ██████╗██╗  ██╗███████╗ ██████╗ ██╗  ██╗
 ██╔══██╗██╔════╝██║  ██║██╔════╝██╔═══██╗╚██╗██╔╝
 ███████║██║     ███████║█████╗  ██║   ██║ ╚███╔╝ 
 ██╔══██║██║     ██╔══██║██╔══╝  ██║   ██║ ██╔██╗ 
 ██║  ██║╚██████╗██║  ██║███████╗╚██████╔╝██╔╝ ██╗
 ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝
                                                  '
clear
echo -e "\n$ansi_art\n"

# Use custom branch if instructed, otherwise default to master
ARCHEOX_REF="${ARCHEOX_REF:-${OMARCHY_REF:-master}}"

# Set mirror based on branch
if [[ $ARCHEOX_REF == "dev" ]]; then
  export ARCHEOX_MIRROR=edge
  echo 'Server = https://mirror.omarchy.org/$repo/os/$arch' | sudo tee /etc/pacman.d/mirrorlist >/dev/null
elif [[ $ARCHEOX_REF == "rc" ]]; then
  export ARCHEOX_MIRROR=rc
  echo 'Server = https://rc-mirror.omarchy.org/$repo/os/$arch' | sudo tee /etc/pacman.d/mirrorlist >/dev/null
else
  export ARCHEOX_MIRROR=stable
  echo 'Server = https://stable-mirror.omarchy.org/$repo/os/$arch' | sudo tee /etc/pacman.d/mirrorlist >/dev/null
fi

# Ensure git is installed
sudo pacman -Syu --noconfirm --needed git

# Use custom repo if specified, otherwise default to this repository
ARCHEOX_REPO="${ARCHEOX_REPO:-${OMARCHY_REPO:-quantrimang123/Archeox-Linux}}"
# Backwards compatibility
export OMARCHY_REPO="$ARCHEOX_REPO"

echo -e "\nCloning Archeox from: https://github.com/${ARCHEOX_REPO}.git"
echo -e "\e[32mRequested branch: $ARCHEOX_REF\e[0m"

# Paths
ARCHEOX_PATH="$HOME/.local/share/archeox"

# Remove existing checkout (if any)
if [[ -d "$ARCHEOX_PATH" ]]; then
  rm -rf "$ARCHEOX_PATH"
fi

# Helper: check if branch exists on remote
remote_has_branch() {
  local repo_url="$1"
  local branch="$2"
  git ls-remote --heads "$repo_url" "$branch" >/dev/null 2>&1
}

repo_url="https://github.com/${ARCHEOX_REPO}.git"

# If the requested branch exists, clone that branch. Otherwise try sensible fallbacks.
if remote_has_branch "$repo_url" "$ARCHEOX_REF"; then
  git clone --branch "$ARCHEOX_REF" --depth 1 "$repo_url" "$ARCHEOX_PATH" >/dev/null
else
  # If requested branch not found and requested was 'master', try 'main'
  if [[ "$ARCHEOX_REF" == "master" ]] && remote_has_branch "$repo_url" "main"; then
    echo "Branch 'master' not found on remote; using 'main' instead."
    ARCHEOX_REF="main"
    git clone --branch "$ARCHEOX_REF" --depth 1 "$repo_url" "$ARCHEOX_PATH" >/dev/null
  else
    echo "Requested branch '$ARCHEOX_REF' not found on remote. Cloning default branch."
    git clone --depth 1 "$repo_url" "$ARCHEOX_PATH" >/dev/null
  fi
fi

echo -e "\nInstallation starting..."

# Source the install script if present
if [[ -f "$ARCHEOX_PATH/install.sh" ]]; then
  # shellcheck disable=SC1090
  source "$ARCHEOX_PATH/install.sh"
else
  echo "Error: $ARCHEOX_PATH/install.sh not found. Clone may have failed or repository layout differs." >&2
  exit 1
fi

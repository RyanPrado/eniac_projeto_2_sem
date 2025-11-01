#!/usr/bin/env bash

set -euo pipefail

echo "[devcontainer setup] Starting setup.sh"

# SSH private key handling (for Codespaces / secrets)
if [ -n "${REMOTE_HOST_TOMCAT:-}" ]; then
  echo "[devcontainer setup] REMOTE_HOST_TOMCAT is set to '$REMOTE_HOST_TOMCAT' — adding host key to known_hosts"
  mkdir -p "$HOME/.ssh"
  # Try to fetch host key and append to known_hosts (silence ssh-keyscan errors)
  if ssh-keyscan -H "$REMOTE_HOST_TOMCAT" >> "$HOME/.ssh/known_hosts" 2>/dev/null; then
    chmod 644 "$HOME/.ssh/known_hosts" || true
  fi
fi

# SSH private key handling (for Codespaces / secrets)
if [ -n "${SSH_PRIVATE_KEY:-}" ]; then
  mkdir -p "$HOME/.ssh"
  SSH_KEY_FILE="$HOME/.ssh/id_devcontainer"
  # Ensure the key is written exactly as provided
  printf "%s\n" "$SSH_PRIVATE_KEY" > "$SSH_KEY_FILE"
  chmod 600 "$SSH_KEY_FILE"

  # Start ssh-agent and add key
  # eval the output so the agent env is exported into the current shell
  eval "$(ssh-agent -s)" >/dev/null
  ssh-add "$SSH_KEY_FILE" >/dev/null
else
  unset SSH_PRIVATE_KEY
fi

# Run npm install if available
if command -v npm >/dev/null 2>&1; then
  echo "[devcontainer setup] Running npm install..."
  npm install
else
  echo "[devcontainer setup] npm not found, skipping npm install"
fi

# Run prepare-ansible.sh if present
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" && pwd)"
prepare_script="$script_dir/prepare-ansible.sh"

if [ -f "$prepare_script" ]; then
  echo "[devcontainer setup] Running prepare-ansible.sh..."
  if [ ! -x "$prepare_script" ]; then
    chmod +x "$prepare_script" || true
  fi
  bash "$prepare_script"
else
  echo "[devcontainer setup] prepare-ansible.sh not found at '$prepare_script', skipping"
fi

echo "[devcontainer setup] setup.sh finished"

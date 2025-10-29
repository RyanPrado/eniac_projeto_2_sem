#!/usr/bin/env bash
set -euo pipefail

echo "[devcontainer setup] Starting setup.sh"

# SSH private key handling (for Codespaces / secrets)
if [ -n "${REMOTE_HOST:-}" ]; then
  echo "[devcontainer setup] REMOTE_HOST is set to '$REMOTE_HOST' — adding host key to known_hosts"
  mkdir -p "$HOME/.ssh"
  # Try to fetch host key and append to known_hosts (silence ssh-keyscan errors)
  if ssh-keyscan -H "$REMOTE_HOST" >> "$HOME/.ssh/known_hosts" 2>/dev/null; then
    chmod 644 "$HOME/.ssh/known_hosts" || true
  fi
fi

# SSH private key handling (for Codespaces / secrets)
if [ -n "${SSH_PRIVATE_KEY:-}" ]; then
  mkdir -p "$HOME/.ssh"
  SSH_KEY_FILE="$HOME/.ssh/id_rsa_codespace"
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

echo "[devcontainer setup] setup.sh finished"

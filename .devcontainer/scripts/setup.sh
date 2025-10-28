#!/usr/bin/env bash
set -euo pipefail

echo "[devcontainer setup] Starting setup.sh"

# Run npm install if available
if command -v npm >/dev/null 2>&1; then
  echo "[devcontainer setup] Running npm install..."
  npm install
else
  echo "[devcontainer setup] npm not found, skipping npm install"
fi

WORKDIR="$(pwd)"
ENV_FILE="$WORKDIR/.env"

if [ ! -f "$ENV_FILE" ]; then
  echo "[devcontainer setup] Creating .env from environment variables (if present)..."
  cat > "$ENV_FILE" <<EOF
DB_ROOT_PASSWORD="${DB_ROOT_PASSWORD:-'rootpassword'}"
DB_DATABASE="${DB_DATABASE:-'app_db'}"
DB_USER="${DB_USER:-'user'}"
DB_PASSWORD="${DB_PASSWORD:-'password'}"
DB_PORT=${DB_PORT:-3306}
TOMCAT_PORT=${TOMCAT_PORT:-8080}
EOF
  echo "[devcontainer setup] .env created at $ENV_FILE"
else
  echo "[devcontainer setup] .env already exists, skipping creation"
fi

# SSH private key handling (for Codespaces / secrets)
if [ -n "${REMOTE_HOST:-}" ]; then
  echo "[devcontainer setup] REMOTE_HOST is set to '$REMOTE_HOST' — adding host key to known_hosts"
  mkdir -p "$HOME/.ssh"
  # Try to fetch host key and append to known_hosts (silence ssh-keyscan errors)
  if ssh-keyscan -H "$REMOTE_HOST" >> "$HOME/.ssh/known_hosts" 2>/dev/null; then
    chmod 644 "$HOME/.ssh/known_hosts" || true
    echo "[devcontainer setup] Host key for $REMOTE_HOST added to $HOME/.ssh/known_hosts"
  else
    echo "[devcontainer setup] Warning: ssh-keyscan failed for $REMOTE_HOST — known_hosts not updated"
  fi
else
  echo "[devcontainer setup] REMOTE_HOST not set — skipping known_hosts update"
fi

# SSH private key handling (for Codespaces / secrets)
if [ -n "${SSH_PRIVATE_KEY:-}" ]; then
  echo "[devcontainer setup] SSH_PRIVATE_KEY found — configuring ssh-agent and adding key"
  mkdir -p "$HOME/.ssh"
  SSH_KEY_FILE="$HOME/.ssh/id_rsa_codespace"
  # Ensure the key is written exactly as provided
  printf "%s\n" "$SSH_PRIVATE_KEY" > "$SSH_KEY_FILE"
  chmod 600 "$SSH_KEY_FILE"

  # Start ssh-agent and add key
  # eval the output so the agent env is exported into the current shell
  eval "$(ssh-agent -s)" >/dev/null
  ssh-add "$SSH_KEY_FILE" >/dev/null
  echo "[devcontainer setup] SSH key added to ssh-agent (key: $SSH_KEY_FILE)"
else
  echo "[devcontainer setup] SSH_PRIVATE_KEY not set — skipping SSH setup"
fi

echo "[devcontainer setup] setup.sh finished"

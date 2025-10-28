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

echo "[devcontainer setup] setup.sh finished"

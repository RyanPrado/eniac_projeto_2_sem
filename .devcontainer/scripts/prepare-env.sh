#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEVCONTAINER_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
REPO_ROOT="$(cd "${DEVCONTAINER_DIR}/.." && pwd)"
SOURCE_ENV="${REPO_ROOT}/.env"
EXAMPLE_ENV="${REPO_ROOT}/.env.example"
TARGET_ENV="${DEVCONTAINER_DIR}/.env"

log() {
  printf '[devcontainer initialize] %s\n' "$1"
}

# Ensure build directory exists for bind mount
mkdir -p "${REPO_ROOT}/build"
log "Ensured target directory exists at ${REPO_ROOT}/build"

if [ -f "${SOURCE_ENV}" ]; then
  if cmp -s "${SOURCE_ENV}" "${TARGET_ENV}" 2>/dev/null; then
    log ".devcontainer/.env already matches repository .env"
  else
    cp "${SOURCE_ENV}" "${TARGET_ENV}"
    log "Copied repository .env into .devcontainer/.env"
  fi
else
  cp "${EXAMPLE_ENV}" "${TARGET_ENV}"
# Auto-generated defaults for devcontainer when no .env exists at the repository root.
# Override by creating a .env file in the project root.
  log "Created .devcontainer/.env with default port values (8080/3306)"
fi

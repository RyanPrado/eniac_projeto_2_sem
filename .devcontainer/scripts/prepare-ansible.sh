#!/bin/bash

# Script to prepare Ansible inventory with environment variables substituted

# Check if REMOTE_HOST is set
if [ -z "${REMOTE_HOST:-}" ]; then
    echo "Error: REMOTE_HOST environment variable is not set."
    exit 1
fi

# Create inventory.ini with substituted variables
cat > inventory.ini << EOF
[remote]
${REMOTE_HOST}

[remote:vars]
ansible_user=${REMOTE_USER}
ansible_ssh_private_key_file=${REMOTE_SSH_FILE}
EOF

echo "inventory.ini created successfully."

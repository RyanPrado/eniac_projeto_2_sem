#!/bin/bash

# Script to prepare Ansible inventory with environment variables substituted

# Check if REMOTE_HOST_TOMCAT is set
if [ -z "${REMOTE_HOST_TOMCAT:-}" ]; then
    echo "Error: REMOTE_HOST_TOMCAT environment variable is not set."
    exit 0;
fi
# Create inventory.ini with substituted variables
cat > inventory.ini << EOF
[webservers]
${REMOTE_HOST_TOMCAT}

[webservers:vars]
ansible_user=${REMOTE_USER_TOMCAT}
ansible_ssh_private_key_file=${REMOTE_SSH_FILE_TOMCAT}

[databases]
${REMOTE_HOST_MYSQL}

[databases:vars]
ansible_user=${REMOTE_USER_MYSQL}
ansible_ssh_private_key_file=${REMOTE_SSH_FILE_MYSQL}
EOF

echo "inventory.ini created successfully."


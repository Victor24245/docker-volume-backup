#!/bin/bash

# Set variables
VOLUME_NAME=${1:-mytestvol}
BACKUP_DIR=${2:-$(pwd)/backups}
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="backup_${VOLUME_NAME}_${TIMESTAMP}.tar.gz"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Run the container to back up the volume
docker run --rm \
    -v ${VOLUME_NAME}:/data \
    -v ${BACKUP_DIR}:/backups \
    busybox \
    sh -c "tar -czvf /backups/${BACKUP_FILE} /data"

# Confirm


if [[ -f "${BACKUP_DIR}/${BACKUP_FILE}" ]]; then
    echo "✅ Backup saved to ${BACKUP_DIR}/${BACKUP_FILE}"
else
    echo "❌ Backup failed"
fi

~            

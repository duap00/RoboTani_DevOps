#!/bin/bash
# Backup PostgreSQL database + Odoo data volumes

BACKUP_DIR="/var/backups/robotani"
DATE=$(date +%F_%H-%M-%S)

mkdir -p $BACKUP_DIR

# Backup Postgres DB
docker exec -t robo_db pg_dump -U odoo postgres > $BACKUP_DIR/db_$DATE.sql

# Backup Odoo volume
docker run --rm -v robotani_odoo_data:/data -v $BACKUP_DIR:/backup alpine \
    tar czf /backup/odoo_data_$DATE.tar.gz /data

echo "Backup completed: $BACKUP_DIR"

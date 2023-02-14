#!/bin/bash
login_file=/root/secret/mylogin.cnf
backup_file=/mnt/server2/Aaron/db/db_backup-$(date +%m%d%Y%H%M).sql.gz
echo "Removing any database backup file older than 30 days..."
/usr/bin/find /mnt/server2/Aaron/db/ -type f -mtime +30 -delete
echo "Backuping database..."
/usr/bin/mysqldump --defaults-extra-file=$login_file -u root --single-transaction --quick --lock-tables=false 1perfectchoice | gzip > $backup_file
echo "Done"

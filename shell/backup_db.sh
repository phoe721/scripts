#!/bin/bash
login_file=/root/secret/mylogin.cnf
backup_file=/media/data/business/1PerfectChoice/db/db_backup-$(date +%m%d%Y%H%M).sql.gz
echo "Backuping database..."
/usr/bin/mysqldump --defaults-extra-file=$login_file -u root --single-transaction --quick --lock-tables=false 1perfectchoice | gzip > $backup_file
echo "Done"

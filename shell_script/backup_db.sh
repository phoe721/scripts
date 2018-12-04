#!/bin/bash

echo "Backuping database..."
/usr/bin/mysqldump --defaults-extra-file=/root/secret/mylogin.cnf -u root --single-transaction --quick --lock-tables=false 1perfectchoice | gzip > /root/db/db_backup-$(date +%m%d%Y%H%M).sql.gz
echo "Done"

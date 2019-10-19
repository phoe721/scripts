#!/bin/bash
login_file=/root/secret/mylogin.cnf
backup_file=/home/aaron/db/db_backup-$(date +%m%d%Y%H%M).sql.gz
#db_folder=1XWkVQn8Qxj8m5Ojfv1CkjG0W4rE5Gd08
db_folder=1Z7nTBLv5pHxGOCQLvhgZxMjpdAC4Kjp3
echo "Backuping database..."
/usr/bin/mysqldump --defaults-extra-file=$login_file -u root --single-transaction --quick --lock-tables=false 1perfectchoice | gzip > $backup_file
echo "Uploading to Google Drive..."
/usr/local/bin/gdrive upload -p $db_folder $backup_file
echo "Done"

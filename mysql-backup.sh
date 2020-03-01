#!/bin/sh

docker exec kohana-env_mysql_1 /usr/bin/mysqldump --all-databases --user=root | gzip > backup/all_databases.sql.gz
echo "backup complete"

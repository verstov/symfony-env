#!/bin/sh

gunzip <  backup/all_databases.sql.gz | docker exec -i kohana-env_mysql_1 /usr/bin/mysql -u root
echo "restore db complete"

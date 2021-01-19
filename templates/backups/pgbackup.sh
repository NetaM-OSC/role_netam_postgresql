#!/bin/bash
NOW="$(date +"%a")-"
DESTINATION="{{ d_netam_db_backup_base_dir }}/postgredump"
BASES=$(psql --list | awk '{print $1}' | grep "[[:alpha:]]" | grep -ve Liste -ve Nom -ve template -ve List -ve Name)

for db in $BASES
do
	FILE=${DESTINATION}/${db}.${NOW}sql.gz
	pg_dump -Cbc "${db}" | gzip -9 > "${FILE}"
done

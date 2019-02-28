#!/bin/bash
set -e
TABLES="fedora32"

for TABLE in $TABLES
do
    if [ ! -f /data/$TABLE.imported ]; then
        psql -v ON_ERROR_STOP=1 -U fedoraAdmin fedora32 < /data/$TABLE.sql > /data/$TABLE.log
        touch /data/$TABLE.imported
    fi
done
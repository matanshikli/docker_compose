#!/bin/bash

mysql -h mysql -P 3306 -u admin -p"$MYSQL_PASSWORD" testdata -Bse \
"CREATE TABLE IF NOT EXISTS DATE ( timestamp TIMESTAMP NOT NULL); 
INSERT INTO DATE (timestamp) VALUES (NOW());"

if [[ $? -ne 0 ]] ; then
echo "SQL query failed"
    exit 1
else
    echo "SQL query success!"
fi

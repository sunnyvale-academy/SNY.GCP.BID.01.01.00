#!/bin/bash
set -x
database=${DB_NAME}
wait_time=30s
password=${SA_PASSWORD}

echo importing data will start in $wait_time...
sleep $wait_time
echo importing data...

/opt/mssql-tools/bin/sqlcmd -S 0.0.0.0 -U sa -P $password -i /initdb/initdb.sql
#/opt/mssql-tools/bin/bcp dbo.DatiRegioni in /dataset/dati-regioni.csv -S localhost -U sa -P $SA_PASSWORD -d $DB_NAME -c -t  ',' -r


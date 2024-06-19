#!/bin/bash
db_ready() {
    /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P "$SA_PASSWORD" -Q "SELECT 1" -b -o /dev/null 2>&1
}
while !(db_ready)
do
    sleep 5
    echo "waiting for the db..."
done
echo "initializing db..."
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P "$SA_PASSWORD" -d master -i /opt/create-database.sql

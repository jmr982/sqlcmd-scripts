Scripts in this repository are meant to provide a starting point when exporting 
or importing data from a MS SQL database using the sqlcmd utility. Skripts use 
CSV files for both operations.

Bash scripts
1. sqlcmdexport.sh - Export table from database to CSV
2. sqlcmdimport.sh - Import from CSV (bcp) to database table

Batch scripts
1. sqlcmdexport.bat - Export table from database to CSV
2. sqlcmdimport.bat - Import from CSV (bulk insert) to database table
3. bulk-insert.sql - SQL file used with sqlcmdimport.bat

sqlcmd documentation:

https://learn.microsoft.com/en-us/sql/tools/sqlcmd/sqlcmd-utility?view=sql-server-ver16

Caution: Use At Your Own Risk - NO BACKSIES!

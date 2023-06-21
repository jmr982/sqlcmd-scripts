@echo off
set SERVER=server\InstanceName
set SQLFILE=bulk-import.sql

sqlcmd -S %SERVER% -i %SQLFILE%

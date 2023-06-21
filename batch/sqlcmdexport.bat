@echo off
set SERVER=server\InstanceName
set DB="databaseName"
set TABLE=tableName
set QUERY="SET NOCOUNT ON; SELECT * FROM %TABLE%"
set TMPFILE=export.tmp
set FILE=export.csv

goto :header

:header
rem Version with header. Uses temporary file %TMPFILE% to save query.
sqlcmd -S %SERVER% -d %DB% -s ";" -W -Q %QUERY% -o %TMPFILE%

rem Removes (second) row containing all dashes and saves file to %FILE%.
if %ERRORLEVEL% == 0 (
	findstr /v ^\-$ %TMPFILE% > %FILE%
	del /q %TMPFILE%
)	

goto :eof

:nohead
rem Alternative version with no header
sqlcmd -S %SERVER% -d %DB% -h -1 -s ";" -W -Q %QUERY% -o %FILE%

#!/bin/bash

# Script to export table to csv file from MS SQL database.
# For headerless csv use parameter nohead. 

SERVER=serverName
USER=userName
PASSWORD=password
DB=database
TABLE=table
FILE=export.csv

if [[ "$1" = "nohead" ]]  # Version with no header.
then
        sqlcmd -S $SERVER -U $USER -P $PASSWORD -d $DB -h -1 -s ";" -W \
                -Q "SET NOCOUNT ON;SELECT * FROM $TABLE;" -o $FILE
else  # Version with header.
        sqlcmd -S $SERVER -U $USER -P $PASSWORD -d $DB -s ";" -W \
                -Q "SET NOCOUNT ON;SELECT * FROM $TABLE;" -o $FILE
        if [[ $? -eq 0 ]]
        then
                # Removes the (second) row containing all dashes.
                sed -i '2d' $FILE
        fi
fi

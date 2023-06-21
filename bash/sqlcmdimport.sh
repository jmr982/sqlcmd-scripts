#!/bin/bash

SERVER=serverName
DATABASE=database
TABLE=table
USER=userName
PASSWORD=password
FILE=import.csv

bcp $TABLE in $FILE -S $SERVER -U $USER -P $PASSWORD -d $DATABASE -c -t ';'

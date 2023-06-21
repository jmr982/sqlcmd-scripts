#!/bin/bash

FILE=$1

sed -i 's/NULL//g' $FILE
sed -i 's/'\"'/'\''/g' $FILE

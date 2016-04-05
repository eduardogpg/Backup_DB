#!/bin/bash

USER="root"
PASSWORD=""
DATABASE="test"

REMOTE_PATH="BackUpDataBase" 
FINAL_OUTPUT=`date +%Y%m%d`_$DATABASE.sql
FINAL_OUTPUT_GZ=$FINAL_OUTPUT.gz


#BackUp
mysqldump --user=$USER --password=$PASSWORD $DATABASE >  $FINAL_OUTPUT
echo "BackUp Done"

#Zip the BackUp file
gzip $FINAL_OUTPUT
echo "Zip Done"
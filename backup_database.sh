#!/bin/bash

USER="root"
PASSWORD=""
DATABASE="test"

FINAL_OUTPUT=`date +%Y%m%d`_$DATABASE.sql
OTHER_FINAL_OUTPUT=your_new_path/`date +%Y%m%d`_$DATABASE.sql

#BackUp
mysqldump --user=$USER --password=$PASSWORD $DATABASE >  $FINAL_OUTPUT
echo "BackUp Done"

#Zip the BackUp file
gzip $FINAL_OUTPUT
echo "Zip Done"

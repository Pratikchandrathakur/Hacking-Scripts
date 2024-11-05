#!/bin/bash
#Script to backup the content of "/Confidential" dir created in root to a "/Backups/<date>" where date is he current date of the backup.
#Storing the current date
date=$(date+%F)
echo "Current Date read as:$date"

#Making directory for the current date inside
if [! -d "Backups/$date"]
then 
      echo "/Backups/$date doesn't exists, creating directory"                                
      mkdir "/Backups/$date"
else
     echo "Warning: /Backups/$date already exists, backup will overwrite" 

fi
#Copying Confidential directory into backup directory.
cp -r /Confidential/* /Backups/$date/


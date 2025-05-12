#!/bin/bash

STORAGE="storagename"
CONTAINER="oracle"
DIRECTORY="scripts"
SAS="saskey"
FILES_LOCATION="/tmp"
LOG_FILE=$FILES_LOCATION"/log.txt"

CREATEDB_FILE="createdb.sh"
INSTALL_GRID_FILE="install_grid_rdbms_oracle_19c.sh"

FILES=($CREATEDB_FILE $INSTALL_GRID_FILE)

for file in ${FILES[*]}; do
	echo "Downloading installation script: ${file}..." >> $LOG_FILE
	wget -O $FILES_LOCATION/$file "https://$STORAGE.blob.core.windows.net/$CONTAINER/$DIRECTORY/$file$SAS" >> $LOG_FILE
	echo "Assigning execution permission to file: ${file}..." >> $LOG_FILE
	chmod +x $FILES_LOCATION/$file
done

sed -i -e 's/\r$//' $FILES_LOCATION/$INSTALL_GRID_FILE
sed -i -e 's/\r$//' $FILES_LOCATION/$CREATEDB_FILE

sudo sh $FILES_LOCATION/$INSTALL_GRID_FILE >> $LOG_FILE

/bin/su -c $FILES_LOCATION/$CREATEDB_FILE - oracle >> $LOG_FILE

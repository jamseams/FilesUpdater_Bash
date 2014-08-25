#!/bin/sh

#This script is to mirror the content of Secondary into the corresponding portable hard disk drive.

CURRENT_DIR=/media/jamseams/Secondary
UPDATE_DIR1=/media/jamseams/Seagate
UPDATE_DIR2=/media/jamseams/Passport

#Check if the Seagate drive is present. In other words, mounted.
if [ -d "$UPDATE_DIR1" ] && [ -d "$CURRENT_DIR" ]
then
	echo "Seagate Backup Drive was found correctly!"
	sudo rsync -gloptvru --delete --exclude '*.tib' --exclude 'System Volume Information' --exclude '*RECYCLE*' $CURRENT_DIR/* $UPDATE_DIR1
fi

#Check if the Jams' Passport Drive is present. In other words, mounted.
if [ -d "$UPDATE_DIR2" ] && [ -d "$CURRENT_DIR" ]
then
	echo "Jams Passport was found correctly!"
	sudo rsync -gloptvru --delete --exclude '*.tib' --exclude 'System Volume Information' --exclude '*RECYCLE*' $CURRENT_DIR/* $UPDATE_DIR2
fi


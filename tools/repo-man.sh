#!/bin/bash
URL=$1
if [$URL == ""]
then 
    echo "Please provide a repo url (http://... ending in .zip"
    exit 1
fi 

TALKDIR=/tmp/talks
mkdir $TALKDIR

while true
do 
    wget -O /tmp/repo.zip $URL
    unzip -u /tmp/repo -d $TALKDIR
    sleep 300
done 

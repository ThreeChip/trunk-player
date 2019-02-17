#!/bin/bash

BASE="/home/radio"
LOG="$BASE/trunk-player/logs/add_audio.log"

echo "Argument $1" >> $LOG
cd $BASE/trunk-player
. env/bin/activate
./manage.py add_transmission $1 >> $LOG 2>&1


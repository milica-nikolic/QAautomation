#! /bin/bash

NOW=$(date +"%Y-%m-%d")
LOG=qhauto-$NOW.log
touch  /qaauto/$LOG

echo "On $NOW successfully created log ...." >> /qaauto/$LOG
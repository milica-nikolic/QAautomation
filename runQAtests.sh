#! /bin/bash

GREEN='\033[1;32m'
RED='\033[0;31m'
NC='\033[0m'
#Known issue: hostname doesn't need to return always same order of addresses
VAR_IP=$(hostname -i | cut -f1 -d' ')

docker pull milica16/qaauto:latest
docker volume create qalogs
docker run --env QAAUTO_IP=$VAR_IP -v qalogs:/qaauto milica16/qaauto:latest

LOGS_PATH=/var/lib/docker/volumes/qalogs/_data

for logFile in $LOGS_PATH/qhauto-*.log; do

    if [ -f "$logFile" ]; then

        if [ -s "$logFile" ]; then

            if grep fail -iq "$logFile"; then

                echo -e "$RED VALIDATION FAILED $NC"

            else

                echo -e "$GREEN VALIDATION SUCCESSFUL $NC"

            fi

        else

            echo -e "$RED VALIDATION FAILED $NC"
        fi

    else
        echo -e "$RED VALIDATION FAILED $NC"
    fi

done

docker container prune --force
docker rmi milica16/qaauto:latest

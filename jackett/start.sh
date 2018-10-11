#!/bin/sh 

ID=$(id -u)

docker run -d \
    --name jackett \
    --net=host \
    -e PUID=$ID \
    -e PGID=$ID \
    -v /etc/localtime:/etc/localtime:ro \
    -v /mnt/extSyn/jackett:/config \
    linuxserver/sonarr

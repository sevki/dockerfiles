#!/bin/sh 

ID=$(id -u)

docker run -d \
    --name sonarr \
    --net=host \
    -e PUID=$ID \
    -e PGID=$ID \
    -v /etc/localtime:/etc/localtime:ro \
    -v /mnt/extSyn/sonarr:/config \
    -v /mnt/extSyn/Downloads:/downloads \
    -v '/mnt/extSyn/TV Shows':/tv  \
    linuxserver/sonarr

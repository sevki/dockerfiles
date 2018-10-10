!#/usr/bin/bash

ID=$(id -u)

docker create \
    --name sonarr \
    -p 8989:8989 \
    -e PUID=$ID -e PGID=$ID \
    -e TZ=Europe/London \ 
    -v /etc/localtime:/etc/localtime:ro \
    -v /mnt/extSyn/sonarr:/config \
    -v /mnt/extSyn/TV Shows:/tv \
    linuxserver/sonarr
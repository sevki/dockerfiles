FROM ubuntu:14.04
MAINTAINER Sevki <s@sevki.org> (@sevki)

# Packaged dependencies
RUN apt-get update && apt-get install -y \
    git golang build-essential bison qemu-system

RUN mkdir -p /harvey

RUN export HARVEY=/harvey
RUN export ARCH=amd64

ENTRYPOINT ["/harvey/BUILD", "all"]
#!/usr/bin/env bash

set -eu
cd $(dirname $0)

docker build -t ctf .

mkdir -p root
docker run --rm -v `pwd`/root:/mnt/root ctf rsync -avr --ignore-existing /root/ /mnt/root/

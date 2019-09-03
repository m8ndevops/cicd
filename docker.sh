#!/bin/bash
pwd
$(aws ecr get-login --no-include-email)
cd /home/ubuntu
pwd
sudo chmod 755 env.sh
. ./env.sh
docker pull $REPO:$TAG
docker-compose up -d
unset REPO
unset TAG
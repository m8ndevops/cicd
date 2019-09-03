#!/bin/bash
pwd
$(aws ecr get-login --no-include-email)
cd /home/ubuntu
sudo chmod 755 env.sh
. ./env.sh
docker pull $REPO:$TAG
docker-compose up -d
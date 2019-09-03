#!/bin/bash
pwd
$(aws ecr get-login --no-include-email)
cd /home/ubuntu
./env.sh
docker pull $REPO:$TAG
#docker-compose up -d
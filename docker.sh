#!/bin/bash
pwd
$(aws ecr get-login --no-include-email)
cd /home/ubuntu
bash env.sh
docker pull $REPO:$TAG
#docker-compose up -d
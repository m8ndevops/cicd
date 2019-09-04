#!/bin/bash
pwd
$(aws ecr get-login --no-include-email)
cd /home/ubuntu
docker pull $REPO
docker-compose up -d
unset REPO
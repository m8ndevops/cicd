#!/bin/bash
$(aws ecr get-login --no-include-email)
cd /home
source ./env.sh
docker-compose up -d

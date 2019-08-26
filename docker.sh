#!/bin/bash
$(aws ecr get-login --no-include-email)
echo "This is the PATH script running"
cd /home/ubuntu/
pwd
ls
docker-compose up -d
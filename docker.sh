#!/bin/bash
$(aws ecr get-login --no-include-email)
echo "This is the PATH script running"
pwd
docker-compose up -d
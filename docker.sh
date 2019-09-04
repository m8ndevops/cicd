#!/bin/bash
pwd
$(aws ecr get-login --no-include-email)
cd /home/ubuntu
docker-compose up -d

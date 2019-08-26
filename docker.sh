#!/bin/bash
$(aws ecr get-login --no-include-email)
ls
pwd
cd /home/ubuntu
pwd
ls
docker-compose up -d
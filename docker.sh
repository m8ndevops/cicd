#!/bin/bash
pwd
$(aws ecr get-login --no-include-email)
docker pull 173437313385.dkr.ecr.ap-south-1.amazonaws.com/test:latest
cd /home/ubuntu
docker-compose up -d
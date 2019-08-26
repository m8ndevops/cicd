#!/bin/bash
$(aws ecr get-login --no-include-email)
cd /root
pwd
docker-compose up -d
#!/bin/bash
$(aws ecr get-login --no-include-email)
ls
pwd
docker-compose up -d
#!/bin/bash
$(aws ecr get-login --no-include-email)
docker compose up -d
#!/bin/bash

$(aws ecr get-login --no-include-email)
docker pull 173437313385.dkr.ecr.ap-south-1.amazonaws.com/test:latest >> /home/ubuntu/commits

isPresent=$(docker container ls -f name=nginx | awk '{print $1}' | tail -n +2)
if [ "$isPresent" != "" ];then
    docker rm -f nginx >> /home/ubuntu/commits
    docker run -d -p 80:80 --name nginx 173437313385.dkr.ecr.ap-south-1.amazonaws.com/test:latest >> /home/ubuntu/commits
else
    docker run -d -p 80:80 --name nginx 173437313385.dkr.ecr.ap-south-1.amazonaws.com/test:latest >> /home/ubuntu/commits
fi
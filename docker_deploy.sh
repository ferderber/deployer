#!/bin/bash
docker pull $1:$2
docker stop $3
docker rm $3
docker run --name=$3 --restart=always "${@:4}" $1
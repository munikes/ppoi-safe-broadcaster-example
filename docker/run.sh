#!/bin/bash
cd -- "$( dirname -- "${BASH_SOURCE[0]}" )"
set -a; . ./.env; set +a
docker stack deploy -c docker-stack.yml -c custom.yml broadcaster
echo \n
docker stack services broadcaster

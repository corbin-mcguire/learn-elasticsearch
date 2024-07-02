#!/bin/bash

exists=$(docker network ls | grep elk-network)

if [[ -z $exists ]]
 then
  echo "Creating network for ELK stack"
  docker network create elk-network
fi

docker compose -f docker-compose.es.yml up -d

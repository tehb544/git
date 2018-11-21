#!/bin/bash

echo "hello! now u gonna get 2 containers "$1 "port "$2  "and "$3 "port "$4
echo ">>================================"
echo "==================>>=============="
echo "================================>>"

echo "now stopping all containers, like:"
docker stop $(docker ps -q)
echo "now removing all containers, like:"
docker rm $(docker ps -aq)
echo "now getting started"
docker pull tehb544/test1
docker run -t -d --name $1 --expose $2 -p $2:$2  tehb544/test1
docker exec $1  service ssh start

docker run -t -d --name $3 --expose $4 -p $4:$4  tehb544/test1
docker exec $3  service ssh start

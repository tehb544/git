#!/bin/bash

echo "hello! now u gonna get 2 containers "$1 "port "$2  "and "$3 "port "$4
echo ">>================================"
echo "==================>>=============="
echo "================================>>"


docker stop $(docker ps)
docker rm $(docker ps -a)
docker pull tehb544/test1
docker run -t -d --name $1 --expose $2 -p $2:$2  tehb544/test1
docker exec $1  service ssh start

docker run -t -d --name $3 --expose $4 -p $4:$4  tehb544/test1
docker exec $3  service ssh start
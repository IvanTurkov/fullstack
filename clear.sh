#!/usr/bin/env bash
docker ps -a | xargs --no-run-if-empty docker rm

docker images | xargs --no-run-if-empty docker rmi

docker volume ls -qf dangling=true | xargs --no-run-if-empty docker volume rm

sudo rm -rf ./db/postgres/*
sudo rm -rf ./db/postgres


sudo rm -rf ./db/mysql/*
sudo rm -rf ./db/mysql

mkdir ./db/postgres
mkdir ./db/mysql

docker ps -a

docker images
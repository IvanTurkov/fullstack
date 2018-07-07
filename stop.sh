#!/usr/bin/env bash

docker-compose down

sudo rm -rf ./db/postgres/*
sudo rm -rf ./db/postgres


sudo rm -rf ./db/mysql/*
sudo rm -rf ./db/mysql

mkdir ./db/postgres
mkdir ./db/mysql

sleep 5

docker volume ls -qf dangling=true | xargs --no-run-if-empty docker volume rm

docker volume ls | docker volume rm

docker images
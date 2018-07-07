#!/usr/bin/env bash

mkdir ./db/postgres
mkdir ./db/mysql

docker pull cubazis/nginx:fullstack
docker pull cubazis/postgres:fullstack
docker pull cubazis/mysql:fullstack
docker pull cubazis/react:fullstack
docker pull cubazis/php:fullstack

docker-compose up --force-recreate -d
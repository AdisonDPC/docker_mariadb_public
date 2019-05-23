#!/bin/bash

# Vars.
AUTHOR=adpc
NAME=mariadb
TAG=1.0
PORT_3306=3344

MYSQL_ROOT_PASSWORD=testuser@docker
MYSQL_USER=testuser
MYSQL_PASSWORD=testuser@docker
MYSQL_DATABASE=db_test

# docker exec -it ${AUTHOR}_$(echo "${NAME}" | tr '/' '_') bash -c "mysql -u ${MYSQL_USER} -p${MYSQL_PASSWORD}"

docker exec -it ${AUTHOR}_$(echo "${NAME}" | tr '/' '_') bash

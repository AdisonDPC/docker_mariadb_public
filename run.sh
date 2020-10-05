#!/bin/bash

# Vars.
AUTHOR=adpc
NAME=mariadb
TAG=latest
PORT_3306=3344
USER=${USER}
HOME_PATH=${HOME}
PWD_PATH=$(pwd)
READ_LINK=$(readlink -f $0)
DIR_NAME=$(dirname ${READ_LINK})
ROOT_PATH=${DIR_NAME}
LOG_PATH=${ROOT_PATH}/logs
DATA_PATH=${ROOT_PATH}/data
CONFIG_PATH=${ROOT_PATH}/config
SCRIPT_PATH=${ROOT_PATH}/script

MYSQL_ROOT_PASSWORD=testuser@docker
MYSQL_USER=testuser
MYSQL_PASSWORD=testuser@docker
MYSQL_DATABASE=db_test
MYSQL_ALLOW_EMPTY_PASSWORD=no
MYSQL_RANDOM_ROOT_PASSWORD=no

# Run docker container.

# Use in Development.
# docker run --name ${AUTHOR}_$(echo "${NAME}" | tr '/' '_') -it --rm \
#     -p ${PORT_3306}:3306 \
#     -v ${CONFIG_PATH}/mariadb/my.cnf:/etc/mysql/conf.d/my.cnf \
#     -v ${CONFIG_PATH}/mariadb/script.sql:/script.sql \
#     -v ${DATA_PATH}:/var/lib/mysql \
#     -v ${SCRIPT_PATH}:/script \
#     -e MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD} \
#     -e MYSQL_USER=${MYSQL_USER} \
#     -e MYSQL_PASSWORD=${MYSQL_PASSWORD} \
#     -e MYSQL_DATABASE=${MYSQL_DATABASE} \
#     -e MYSQL_ALLOW_EMPTY_PASSWORD=${MYSQL_ALLOW_EMPTY_PASSWORD} \
#     -e MYSQL_RANDOM_ROOT_PASSWORD=${MYSQL_RANDOM_ROOT_PASSWORD} \
#     ${NAME}:${TAG}

# Use in Production.
# docker run --name ${AUTHOR}_$(echo "${NAME}" | tr '/' '_') -d -it --rm \
#     -p ${PORT_3306}:3306 \
#     -v ${CONFIG_PATH}/mariadb/my.cnf:/etc/mysql/conf.d/my.cnf \
#     -v ${CONFIG_PATH}/mariadb/script.sql:/script.sql \
#     -v ${DATA_PATH}:/var/lib/mysql \
#     -v ${SCRIPT_PATH}:/script \
#     -e MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD} \
#     -e MYSQL_USER=${MYSQL_USER} \
#     -e MYSQL_PASSWORD=${MYSQL_PASSWORD} \
#     -e MYSQL_DATABASE=${MYSQL_DATABASE} \
#     -e MYSQL_ALLOW_EMPTY_PASSWORD=${MYSQL_ALLOW_EMPTY_PASSWORD} \
#     -e MYSQL_RANDOM_ROOT_PASSWORD=${MYSQL_RANDOM_ROOT_PASSWORD} \
#     ${NAME}:${TAG}

docker run --name ${AUTHOR}_$(echo "${NAME}" | tr '/' '_') -d -it --rm \
    -p ${PORT_3306}:3306 \
    -v ${CONFIG_PATH}/mariadb/my.cnf:/etc/mysql/conf.d/my.cnf \
    -v ${CONFIG_PATH}/mariadb/script.sql:/SCRIPT.sql \
    -v ${DATA_PATH}:/var/lib/mysql \
    -v ${SCRIPT_PATH}:/script \
    -e MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD} \
    ${NAME}:${TAG}

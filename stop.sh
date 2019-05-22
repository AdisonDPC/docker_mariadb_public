#!/bin/bash

# Vars.
AUTHOR=adpc
NAME=mariadb
TAG=1.0

docker stop ${AUTHOR}_$(echo "${NAME}" | tr '/' '_')

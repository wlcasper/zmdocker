#!/bin/bash

set -o verbose
set -e

VERSION=${1:-1.36.12}
docker build -t netcasper/zoneminder:v${VERSION}-ubuntu18.04 .
docker service update --image netcasper/zoneminder:v${VERSION}-ubuntu18.04 zoneminder_zm
docker exec -ti zoneminder_zm.1.$(docker stack ps -f 'name=zoneminder_zm.1' zoneminder -q --no-trunc | head -n1) zmupdate.pl

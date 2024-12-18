#!/bin/bash

set -e

docker image rm head:latest || true
docker image rm compute:latest || true

docker build -t head:latest ./docker/master
docker build -t compute:latest ./docker/worker

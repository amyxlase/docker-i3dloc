#!/bin/bash

set -e

HOST_REPO_DIR=$PWD/..
DOCKER_REPO_DIR=/home/
USER_ID="$(id -u)"
IMAGE_NAME="airlab-i3dloc"

docker run \
    -it --rm \
    --volume ${HOST_REPO_DIR}:${DOCKER_REPO_DIR} \
    --privileged \
    --net=host \
    $IMAGE_NAME
#!/usr/bin/env bash

set -e

DOCKER_REPO=joon09/
TAG=ezmeta

build() {
    NAME=$1
    IMAGE=${DOCKER_REPO}/${NAME}:${TAG}
    cd ${NAME}
    echo '--------------------------' building ${IMAGE} in $(pwd)
    docker build -t ${IMAGE} .
    cd -
}

#build jupyter-lab-gpu-custom
build jupyter-lab-gpu
#!/bin/bash

IMAGE_NAME="base-node"
docker image rm ${IMAGE_NAME}
docker build . -t ${IMAGE_NAME}
docker run --rm --entrypoint '/bin/sh' -v ${PWD}:/tmp ${IMAGE_NAME} -c '\
  apk info -v | sort > /tmp/package_versions.txt && \
  echo "===== NPM Packages =====" >> /tmp/package_versions.txt && \
  npm -g list --depth=0 >> /tmp/package_versions.txt && \
  chmod 777 /tmp/package_versions.txt'

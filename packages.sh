#!/bin/bash

docker build . -t base-node
docker run --rm --entrypoint '/bin/sh' -v ${PWD}:/tmp base-node -c '\
  apk info -v | sort > /tmp/package_versions.txt && \
  chmod 777 /tmp/package_versions.txt'

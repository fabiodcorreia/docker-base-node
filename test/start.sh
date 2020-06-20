#!/bin/bash

NODE=`docker exec node node --version`
NPM=`docker exec node npm --version`
YARN=`docker exec node yarn --version`

if [ "$NODE" != "v12.17.0" ]; then
  echo "**** Node not found ****"
  exit 1
fi

if [ "$NPM" != "6.14.4" ]; then
  echo "**** NPM not found ****"
  exit 1
fi

if [ "$YARN" != "1.22.4" ]; then
  echo "**** Yarn not found ****"
  exit 1
fi

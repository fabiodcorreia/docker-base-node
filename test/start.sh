#!/bin/bash

NODE=`node --version`
NPM=`npm --version`

if [ "$NODE" != "v12.17.0" ]; then
  echo "**** Node not found - $NODE ****"
  exit 1
fi

if [ "$NPM" != "6.14.4" ]; then
  echo "**** NPM not found - $NPM ****"
  exit 1
fi

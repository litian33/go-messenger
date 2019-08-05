#!/bin/sh 
set -e 
docker run --rm -it \
    -v $PWD:/go/src/go-messenger/go-auth/ \
    -e SOURCE_PATH=go-messenger/go-auth/ \
    litian/go-builder:1.12

docker build -t litian/go-auth .

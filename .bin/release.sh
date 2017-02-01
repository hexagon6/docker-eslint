#!/bin/bash

IMAGE=hexagon6/eslint
. .env

docker build -t ${IMAGE} . && docker push ${IMAGE}

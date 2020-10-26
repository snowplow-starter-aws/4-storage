#!/bin/bash


IMAGE_TAG=0.1.0
REPO=petersiemen
NAME=snowplow-postgres-loader

docker build -t ${NAME}:${IMAGE_TAG} .
docker tag ${NAME}:${IMAGE_TAG} ${REPO}/${NAME}:${IMAGE_TAG}
#docker push ${REPO}/${NAME}:${IMAGE_TAG}

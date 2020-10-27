#!/bin/bash


IMAGE_TAG=test
REPO=petersiemen
NAME=snowplow-postgres-loader

docker build -t ${NAME}:${IMAGE_TAG} .
docker tag ${NAME}:${IMAGE_TAG} ${REPO}/${NAME}:${IMAGE_TAG}
#docker push ${REPO}/${NAME}:${IMAGE_TAG}

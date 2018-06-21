#!/bin/bash -ex

if [[ -f .env ]]
then
    source .env
fi    

echo "Running gradle-qs container..."
docker run --rm -it --entrypoint='sh' \
    $DOCKER_OPTS \
    gradle-qs:latest
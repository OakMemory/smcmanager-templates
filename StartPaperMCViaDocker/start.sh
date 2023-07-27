#!/bin/bash

if docker ps -f "name=a" | grep -q "$2"; then
    echo "Container $2 is already running."
else
    docker run \
        -d -it \
        --name "$2" \
        -v "$(pwd)":/minecraft \
        -p 25565:25565 \
        "docker.io/suibing/papermc:$1-latest" \
        "-Xmx$3"
fi

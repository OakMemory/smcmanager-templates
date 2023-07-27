#!/bin/bash

if docker ps -f "name=$1" | grep -q "$1"; then
    docker stop "$1"
else
    echo "Container $1 not running."
fi

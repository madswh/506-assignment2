#!/bin/bash

if ! docker image inspect madswh/flask-app:01 > /dev/null 2>&1; then
    echo "Image not found, building..."
    sudo docker build -t madswh/flask-app:01 .
else
    echo "Image already exists, skipping build."
fi
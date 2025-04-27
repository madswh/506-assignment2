#!/bin/bash
cd "/Users/maddywhitney/Library/CloudStorage/GoogleDrive-whitmi000@gmail.com/My Drive/School/University_of_Washington/Software_Engineering/506/assignment2"

if ! docker image inspect flask-app:01 > /dev/null 2>&1; then
    echo "Image not found, building..."
    sudo docker build -t flask-app:01 .
else
    echo "Image already exists, skipping build."
fi

docker run -d -p 5001:5001 --rm flask-app:01
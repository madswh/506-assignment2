#!/bin/bash

# Define the image name
IMAGE_NAME="assignment2:latest"

#start the docker daemon if not running
sudo systemctl start docker

# Build the Docker image
echo "Building Docker image..."
docker build -t $IMAGE_NAME .

# Check if the build was successful
if [ $? -eq 0 ]; then
    echo "Docker image built successfully: $IMAGE_NAME"
else
    echo "Failed to build Docker image."
    exit 1
fi
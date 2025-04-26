#!/bin/bash
cd assignment2/
sudo docker build -t flask-app:01 .

sudo docker run -d -p 5000:5000 flask-app:01
echo "Docker container is running. You can access the Flask app at http://localhost:5000"
# To stop the container, you can use:
# sudo docker stop <container_id>
# To remove the container, you can use:
# sudo docker rm <container_id>
# To remove the image, you can use:
# sudo docker rmi flask-app:01
# To list all running containers, you can use:
# sudo docker ps
# To list all images, you can use:
# sudo docker images
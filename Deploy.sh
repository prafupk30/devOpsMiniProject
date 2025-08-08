#!/bin/bash
set -e

CONTAINER_NAME=devops-mini
IMAGE_NAME=your-dockerhub-username/devops-mini:latest

echo "Pulling latest image..."
docker pull $IMAGE_NAME

echo "Stopping old container..."
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true

echo "Starting new container..."
docker run -d --name $CONTAINER_NAME -p 80:5000 $IMAGE_NAME

echo "Deployment complete ✅"

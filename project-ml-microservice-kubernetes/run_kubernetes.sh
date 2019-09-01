#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=mirch/ml_service

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run mirch/ml_service --image=mirch/ml_service --port=5000

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward mirch/ml_service 5000:80


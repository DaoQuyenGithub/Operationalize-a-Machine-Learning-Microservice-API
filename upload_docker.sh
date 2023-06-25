#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=dquyen2806/project-4

# Step 2:  
# Authenticate & tag
docker login 
docker image tag project-4 $dockerpath:latest
echo "Docker ID&Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker image push $dockerpath:latest
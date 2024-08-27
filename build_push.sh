#!/bin/bash

# Build Docker image
docker build -t ghcr.io/alf-anas/order-service:latest .

# Login to GitHub
echo "$TOKEN_GITHUB" | docker login ghcr.io -u alf-anas --password-stdin

# Push Docker image to GitHub Packages
docker push ghcr.io/alf-anas/order-service:latest
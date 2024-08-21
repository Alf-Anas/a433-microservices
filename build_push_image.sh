#!/bin/bash

# Build Docker image dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# List Docker image yang ada di lokal
docker images

# Mengubah tag image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/alf-anas/item-app:v1

# Login ke GitHub Packages dengan token
echo $TOKEN_GITHUB | docker login ghcr.io -u alf-anas --password-stdin

# Mengunggah Docker image ke GitHub Packages
docker push ghcr.io/alf-anas/item-app:v1

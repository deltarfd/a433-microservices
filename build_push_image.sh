#!/bin/bash

# Build a Docker image from the Dockerfile in the current directory,
# and tag it with the name 'item-app' and version 'v1'.
docker build -t item-app:v1 .

# List all Docker images available on the local machine.
docker images

# Create a new tag ('ghcr.io/deltarfd/item-app:v1') for an existing Docker image ('item-app:v1').
docker tag item-app:v1 ghcr.io/deltarfd/item-app:v1

# Perform Docker login to a container registry ('ghcr.io') with the specified username ('deltarfd').
# The password is provided through the standard input using the '--password-stdin' option.
# The password is typically stored as an environment variable ('$CR_PAT').
echo $CR_PAT | docker login -u deltarfd --password-stdin ghcr.io

# Push the Docker image ('item-app:v1') to the container registry ('ghcr.io').
docker push ghcr.io/deltarfd/item-app:v1
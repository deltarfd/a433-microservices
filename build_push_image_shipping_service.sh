#!/bin/bash

# Build a Docker image from the Dockerfile in the current directory,
# and tag it with the name 'shipping-service' and version 'latest'.
docker build -t ghcr.io/deltarfd/shipping-service:latest .

# Perform Docker login to a container registry ('ghcr.io') with the specified username ('deltarfd').
# The password is provided through the standard input using the '--password-stdin' option.
# The password is typically stored as an environment variable ('$CR_PAT').
echo $CR_PAT | docker login -u deltarfd --password-stdin ghcr.io

# Push the Docker image ('shipping-service:latest') to the container registry ('ghcr.io').
docker push ghcr.io/deltarfd/shipping-service:latest
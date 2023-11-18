#!/bin/bash

# Run lint-dockerfile job locally for the karsajobs branch
circleci local execute lint-dockerfile

# Run test-app job locally for the karsajobs branch
circleci local execute test-app

# Run build-app-karsajobs job locally for the karsajobs branch
circleci local execute build-app-karsajobs
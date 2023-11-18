#!/bin/bash

# Run lint-dockerfile job locally for the karsajobs-ui branch
circleci local execute lint-dockerfile

# Run build-app-karsajobs-ui job locally for the karsajobs-ui branch
circleci local execute build-app-karsajobs-ui
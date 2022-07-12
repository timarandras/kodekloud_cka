#!/bin/bash

k create deployment nginx-deploy --image=nginx:1.16 --replicas=1

# Change image version to 1.17
k edit deployments.apps nginx-deploy

# Check if done
k describe deployment.apps nginx-deploy
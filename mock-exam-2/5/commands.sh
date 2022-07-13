#!/bin/bash

k create deployment nginx-deploy --image=nginx:1.16 --replicas=1

# Bump image version
k edit --record deployments.apps nginx-deploy

# Check
k rollout history deployment nginx-deploy
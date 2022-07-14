#!/bin/bash

k get ns
k create ns hr
k run hr-pod -n hr --image=redis:alpine --labels=environment=production,tier=frontend

# Check
k -n hr get po
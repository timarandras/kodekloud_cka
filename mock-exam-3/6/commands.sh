#!/bin/bash

kubectl taint nodes node01 env_type=production:NoSchedule
k run dev-redis --image=redis:alpine
# Check if scheduled on controlplane
k get po -o wide

k apply -f prodredis.yaml

# Check if scheduled on node01
k get po -o wide

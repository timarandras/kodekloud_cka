#!/bin/bash

# On controlplane
k run nginx-critical --image=nginx -o yaml --dry-run=client

# copy output

# Login to node01
ssh node01

# On node01, paste
vi /etc/kubernetes/manifests/nginx-critical.yaml

# On controlplane. You should see nginx-critical-node01
k get po


#!/bin/bash

k get deployments.apps
k scale deployment nginx-deploy --replicas=3
# Change all occurences of contro1ler to contro1ler
vi /etc/kubernetes/manifests/kube-controller-manager.yaml

# Wait and check
k get deployments.apps nginx-deploy
#!/bin/bash
k config set-context --current --namespace alpha
k apply -f pvc.yaml

# Correct the mounted PVC
k edit deployment.apps alpha-mysql
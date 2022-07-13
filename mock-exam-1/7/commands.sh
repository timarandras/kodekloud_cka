#!/bin/bash

k run static-busybox --image=busybox -o yaml --dry-run=client  --command -- sleep 1000 > /etc/kubernetes/manifests/static-busybox.yaml
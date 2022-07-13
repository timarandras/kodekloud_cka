#!/bin/bash

k run nginx-resolver --image=nginx
k expose pod nginx-resolver --name=nginx-resolver-service --port=80

k run lookup --image=busybox:1.28 --command -- sleep 3600
k exec lookup -- nslookup nginx-resolver-service.default.svc.cluster.local > nginx.svc
k exec lookup -- nslookup 10-50-192-4.default.pod.cluster.local > nginx.pod
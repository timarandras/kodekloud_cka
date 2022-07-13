#!/bin/bash

k expose deployment hr-web-app --type=NodePort --port=8080 --name=hr-web-app-service -o yaml --dry-run=client > hr-svc.yaml

# Add nodePort: 30082 to spec
vi hr-svc.yaml
k apply -f hr-svc.yaml

# Check
k get svc
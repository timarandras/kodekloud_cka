#!/bin/bash

k get po orange -o yaml > orange.yaml

# Fix init container command
vi orange.yaml

# Check
k get po
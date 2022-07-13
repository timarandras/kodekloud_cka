#!/bin/bash

k apply -f redis.yaml

# Check
k get po
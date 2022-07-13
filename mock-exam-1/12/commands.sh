#!/bin/bash

k apply -f pv.yaml

# Check
k get pv
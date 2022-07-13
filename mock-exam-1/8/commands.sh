#!/bin/bash

k -n finance run temp-bus --image=redis:alpine --namespace=finance

# Check
k -n finance get po
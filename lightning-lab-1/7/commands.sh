#!/bin/bash

k apply -f pod.yaml

#Check
k describe -n admin1401 pod secret-1401
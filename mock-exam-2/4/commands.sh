#!/bin/bash

k apply -f pvc.yaml
k apply -f use-pv.yaml
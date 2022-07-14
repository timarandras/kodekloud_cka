#!/bin/bash

k create sa pvviewer
kubectl create clusterrole pvviewer-role --verb=list --resource=PersistentVolumes
kubectl create clusterrolebinding pvviewer-role-binding --clusterrole=pvviewer-role --serviceaccount=default:pvviewer
k run pvviewer --image=redis --serviceaccount=pvviewer
#!/bin/bash

# Get CSR of user
cat /root/CKA/john.csr | base64 | tr -d "\n"

k apply -f csr.yaml

# Check if CSR prending
k get csr

k certificate approve john-developer

k create role developer --namespace=development --verb=create --verb=get --verb=list --verb=update --verb=delete --resource=pods
k create rolebinding developer-binding-john --namespace=development --role=developer --user=john

# Check
k -n development get po --as john
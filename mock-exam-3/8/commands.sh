#!/bin/bash

# Fix port 9999 to 6443
vi super.kubeconfig

# Check
k --kubeconfig /root/CKA/super.kubeconfig get po
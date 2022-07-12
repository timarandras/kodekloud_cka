#!/bin/bash

# https://kubernetes.io/docs/tasks/administer-cluster/kubeadm/kubeadm-upgrade/
# On controlplane
apt update
apt install kubeadm=1.20.0-00
kubeadm upgrade plan 1.20.0
kubeadm upgrade apply 1.20.0
apt install kubectl=1.20.0-00 kubelet=1.20.0-00
service kubelet restart
k drain node01

# On node01
apt update
apt install kubeadm=1.20.0-00
kubeadm upgrade node
apt install kubectl=1.20.0-00 kubelet=1.20.0-00
service kubelet restart

# On controlplane
k uncordon node01
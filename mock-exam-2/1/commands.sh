#!/bin/bash

export ETCDCTL_API=3
etcdctl snapshot --cacert /etc/kubernetes/pki/etcd/ca.crt --cert /etc/kubernetes/pki/apiserver-etcd-client.crt --key /etc/kubernetes/pki/apiserver-etcd-client.key save /opt/etcd-backup.db

# Check
ls -la /opt/
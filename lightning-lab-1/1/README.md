Upgrade the current version of kubernetes from 1.19 to 1.20.0 exactly using the kubeadm utility. Make sure that the upgrade is carried out one node at a time starting with the master node. To minimize downtime, the deployment gold-nginx should be rescheduled on an alternate node before upgrading each node.

Upgrade controlplane node first and drain node node01 before upgrading it. Pods for gold-nginx should run on the controlplane node subsequently.

- Cluster Upgraded?
- pods 'gold-nginx' running on controlplane?
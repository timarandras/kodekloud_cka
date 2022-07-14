#!/bin/bash

#k get nodes -o jsonpath='{range .items[*]}{.status.addresses[?(@.type == "InternalIP")].address}{" "}{end}' > /root/CKA/node_ips
k get nodes -o jsonpath='{.items[*].status.addresses[?(@.type == "InternalIP")].address}' > /root/CKA/node_ips

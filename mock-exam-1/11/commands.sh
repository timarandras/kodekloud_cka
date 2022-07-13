#!/bin/bash

k get nodes -o jsonpath='{.items[*].status.nodeInfo.osImage}' > /opt/outputs/nodes_os_x43kj56.txt

# Check
cat /opt/outputs/nodes_os_x43kj56.txt
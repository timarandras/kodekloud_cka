#!/bin/bash

k get deployments.apps -n admin2406 -o custom-columns=DEPLOYMENT:'{.metadata.name}',CONTAINER_IMAGE:'{.spec.template.spec.containers[*].image}',READY_REPLICAS:'{.status.readyReplicas}',NAMESPACE:'{.metadata.namespace}' --sort-by '{.metadata.name}' > /opt/admin2406_data
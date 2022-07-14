Taint the worker node node01 to be Unschedulable. Once done, create a pod called dev-redis, image redis:alpine, to ensure workloads are not scheduled to this worker node. Finally, create a new pod called prod-redis and image: redis:alpine with toleration to be scheduled on node01.

key: env_type, value: production, operator: Equal and effect: NoSchedule

- Key = env_type
- Value = production
- Effect = NoSchedule
- pod 'dev-redis' (no tolerations) is not scheduled on node01?
- Create a pod 'prod-redis' to run on node01
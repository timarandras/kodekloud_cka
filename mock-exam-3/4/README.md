Create a Pod called non-root-pod , image: redis:alpine
runAsUser: 1000
fsGroup: 2000

- Pod non-root-pod fsGroup configured
- Pod non-root-pod runAsUser configured
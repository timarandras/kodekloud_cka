Create a pod called hr-pod in hr namespace belonging to the production environment and frontend tier .
image: redis:alpine

Use appropriate labels and create all the required objects if it does not exist in the system already.

- hr-pod labeled with environment=production?
- hr-pod labeled with tier=frontend?
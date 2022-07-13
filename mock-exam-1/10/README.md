Expose the hr-web-app as service hr-web-app-service application on port 30082 on the nodes on the cluster.

The web application listens on port 8080.

- Name: hr-web-app-service
- Type: NodePort
- Endpoints: 2
- Port: 8080
- NodePort: 30082
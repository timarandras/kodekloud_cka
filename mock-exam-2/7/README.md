Create a nginx pod called nginx-resolver using image nginx, expose it internally with a service called nginx-resolver-service.

Test that you are able to look up the service and pod names from within the cluster. Use the image busybox:1.28 to create a pod for dns lookup. Record results in /root/CKA/nginx.svc and /root/CKA/nginx.pod for service and pod name resolutions respectively

- Pod: nginx-resolver created
- Service DNS Resolution recorded correctly
- Pod DNS resolution recorded correctly
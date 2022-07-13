A pod definition file is created at /root/CKA/use-pv.yaml. Make use of this manifest file and mount the persistent volume called pv-1. Ensure the pod is running and the PV is bound.

mountPath: /data
persistentVolumeClaim Name: my-pvc

- persistentVolume Claim configured correctly
- pod using the correct mountPath
- pod using the persistent volume claim?
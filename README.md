
# Mini Cluster

Local k8s environment with using minikube and managing http requests with ingress.


# Requirements

- Docker

- Minikube

- Helm

- You have to add 127.0.0.1 dotnetsample.com line to /etc/hosts file.

- After starting minikube you must enable ingress and metric-server to use them 

```
minikube addons enable ingress

```
```
minikube addons enable metrics-server 
```
# Environment Overview

# Usage

- Create namespace for backend services. 
```
kubectl create ns backend
```

- After creating namespace all have to do helm install :

```
helm install dotnetsample-release helm/ --values helm/values.yaml 
```

- start minikube tunnel for create a network route on the host to the service using the cluster's IP address as a gateway

```
minikube tunnel 
```


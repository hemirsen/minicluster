#!/bin/bash -e

minikube start
minikube addons enable ingress
minikube addons enable metrics-server
kubectl create ns backend
helm install dotnetsample-release helm/ --values helm/values.yaml
minikube tunnel
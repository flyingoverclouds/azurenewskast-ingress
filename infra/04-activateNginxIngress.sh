#!/bin/sh
. ./00-defineConfiguration.sh

KNS_NGINX="nginx-ingress"

kubectl create namespace $KNS_NGINX

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

helm install nginx-ingress ingress-nginx/ingress-nginx \
    --namespace $KNS_NGINX \
    --set controller.replicaCount=2 \
    --set controller.nodeSelector."beta\.kubernetes\.io/os"=linux \
    --set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux

kubectl get services --namespace $KNS_NGINX


#!/bin/sh
. ./00-defineConfiguration.sh

helm repo add jetstack https://charts.jetstack.io
helm repo update

kubectl create namespace $KNS_CERTMGR

kubectl apply -f https://raw.githubusercontent.com/jetstack/cert-manager/release-0.14/deploy/manifests/00-crds.yaml --validate=false 

helm install cert-manager \
    --namespace $KNS_CERTMGR \
    --version v0.14.0 \
    jetstack/cert-manager

kubectl get pods --namespace $KNS_CERTMGR


# Ca continue dans le GIT :)
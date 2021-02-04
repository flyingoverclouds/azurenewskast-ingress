#!/bin/sh
RESOURCE_GROUP="ANK-AKS-AppGw"
LOCATION="francecentral"
CLUSTER_NAME="ankaks-appgw"
APPGW_NAME="appgwPourAKS"


az feature register --name AKS-IngressApplicationGatewayAddon --namespace Microsoft.ContainerService

az group create --name $RESOURCE_GROUP --location $LOCATION

az aks create -n $CLUSTER_NAME -g $RESOURCE_GROUP --network-plugin azure --enable-managed-identity -a ingress-appgw --appgw-name $APPGW_NAME --appgw-subnet-prefix "10.2.0.0/16" --generate-ssh-keys

az aks get-credentials -n $CLUSTER_NAME -g $RESOURCE_GROUP

# deploiement de l'application de démo 
#kubectl apply -f https://raw.githubusercontent.com/Azure/application-gateway-kubernetes-ingress/master/docs/examples/aspnetapp.yaml
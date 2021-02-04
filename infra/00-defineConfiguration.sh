#!/bin/sh
# Remplacer les valeurs des variables par qui vous conviennent
RESOURCE_GROUP=__NomDeVotreResourceGroupXXXXX__
AKS_CLUSTER_NAME=__NomDeVotreClusterAKS_XXXXX__
REGION_NAME=francecentral
SUBNET_NAME=aks-subnet
VNET_NAME=aks-vnet

# nom de l'acr (sans le 'azurecr.io')
ACR_NAME=NomDeVotreACR

# namespace pour l'installation de nginx-ingress
KNS_NGINX="nginx-ingress"

#namespace kubernetes pour l'installation du certificat manager
KNS_CERTMGR="cert-manager"
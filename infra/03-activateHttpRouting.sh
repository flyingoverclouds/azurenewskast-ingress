#!/bin/sh
. ./00-defineConfiguration.sh

az aks enable-addons --resource-group $RESOURCE_GROUP --name $AKS_CLUSTER_NAME \
    --addons http_application_routing

HTTPROUTING_DNSNAME=`az aks show --resource-group $RESOURCE_GROUP --name $AKS_CLUSTER_NAME \
    --query addonProfiles.httpApplicationRouting.config.HTTPApplicationRoutingZoneName \
    -o tsv`

echo "Nom de domaine de votre AKS ingress : $HTTPROUTING_DNSNAME"
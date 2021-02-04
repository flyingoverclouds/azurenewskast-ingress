@echo off
SET KNS=computerof80s-httprouting

call kubectl create namespace %KNS%

call kubectl apply -f replicas.yaml --namespace %KNS%

call kubectl apply -f services.yaml --namespace %KNS%

call kubectl apply -f configurationHttpRoutingIngress.yaml --namespace %KNS%

REM suivi des logs de l'addon HTTP_ROUTING
REM kubectl logs -f deploy/addon-http-application-routing-external-dns -n kube-system

REM suivi des log de l'ingress HTTP_ROUTING
REM kubectl logs -f deploy/addon-http-application-routing-nginx-ingress-controller -n kube-system
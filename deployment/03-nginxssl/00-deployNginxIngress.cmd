@echo off

REM : Ca Commence dans le cloud drive (déploiement NGINX / CERT Manage)

SET KNS=computerof80s-nginxssl

call kubectl create namespace %KNS%

call kubectl apply -f replicas.yaml --namespace %KNS%

call kubectl apply -f services.yaml --namespace %KNS%

call kubectl apply -f 00-deployNginxIngress.yaml --namespace %KNS%

REM suivi des logs de l'addon HTTP_ROUTING ???? TO UPDATE FOR NGINX
REM kubectl logs -f deploy/addon-http-application-routing-external-dns -n kube-system

REM suivi des log de l'ingress HTTP_ROUTING ???? TO UPDATE FOR NGINX
REM kubectl logs -f deploy/addon-http-application-routing-nginx-ingress-controller -n kube-system

REM ... Ca continue dans cloud drive (déploiement du certmanager) puis dans le fichier 01-....cmd
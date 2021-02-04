@echo off

REM Ca commence dans le shellAzure : 04-activateNginxIngress.sh

SET APP_NS=computerof80s-nginxssl

call kubectl create namespace %APP_NS%

call kubectl apply -f replicas.yaml --namespace %APP_NS%

call kubectl apply -f services.yaml --namespace %APP_NS%

call kubectl apply -f 00-deployNginxIngress.yaml --namespace %APP_NS%

REM ... Ca continue dans le shellAzure (05-activateLetsEncryptNginxIngress.sh : déploiement déploiement du certmanager) puis dans le fichier 01-....cmd
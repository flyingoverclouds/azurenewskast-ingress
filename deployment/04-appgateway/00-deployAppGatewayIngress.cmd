@echo off
REM Ca commence dans le shellAzure : 06-createAppGateway.sh

SET APP_NS=computerof80s-appgw

call kubectl create namespace %APP_NS%

call kubectl apply -f replicas.yaml --namespace %APP_NS%

call kubectl apply -f services.yaml --namespace %APP_NS%



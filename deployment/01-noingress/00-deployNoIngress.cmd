@echo off
SET KNS=computerof80s-noingress

call kubectl create namespace %KNS%

REM call kubectl apply -f deployments.yaml --namespace %KNS%
call kubectl apply -f replicas.yaml --namespace %KNS%

call kubectl apply -f services.yaml --namespace %KNS%

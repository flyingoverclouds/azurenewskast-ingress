@echo off

REM : Ca continue dans le clouddrive (déploiement du cert manager avec helm)

SET APP_NS=computerof80s-nginxssl

kubectl apply -f cluster-letsencrypt-issuer.yaml --namespace %APP_NS% 

kubectl apply -f configurationSSLNginxIngress.yaml --namespace %APP_NS% 

@REM kubectl describe cert cpc464-web-cert --namespace %APP_NS%

@REM kubectl get cert --namespace %APP_NS%
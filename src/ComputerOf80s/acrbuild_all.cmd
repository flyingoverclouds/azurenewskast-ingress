@echo OFF
set ACRNAME=mcmgdevnccr

call az acr build --registry %ACRNAME% --image amiga Amiga\
call az acr build --registry %ACRNAME% --image amstradcpc464 AmstradCPC464\
call az acr build --registry %ACRNAME% --image atarist AtariST\
call az acr build --registry %ACRNAME% --image commodore64 Commodore64\
call az acr build --registry %ACRNAME% --image squale Squale\

az acr repository list -n mcmgdevnccr

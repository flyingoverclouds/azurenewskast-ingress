@echo OFF
cd Amiga
docker build . -t amiga
cd ..\AmstradCPC464
docker build . -t amstradcpc464
cd ..\AtariST
docker build . -t atarist
cd ..\Commodore64
docker build . -t commodore64
cd ..\Squale
docker build . -t squale
cd ..

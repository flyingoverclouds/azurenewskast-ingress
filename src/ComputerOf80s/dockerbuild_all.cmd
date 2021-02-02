@echo OFF
cd Amiga
call docker build . -t amiga
cd ..\AmstradCPC464
call docker build . -t amstradcpc464
cd ..\AtariST
call docker build . -t atarist
cd ..\Commodore64
call docker build . -t commodore64
cd ..\Squale
call docker build . -t squale
cd ..

call docker images
@echo OFF
call docker run -d -p 8500:8500 amiga
call docker run -d -p 8464:8464 amstradcpc464
call docker run -d -p 9040:9040 atarist
call docker run -d -p 8064:8064 commodore64
call docker run -d -p 8007:8007 squale

call docker ps
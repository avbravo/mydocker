@echo off
call mvn clean package
call docker build -t com.avbravo/mydocker .
call docker rm -f mydocker
call docker run -d -p 9080:9080 -p 9443:9443 --name mydocker com.avbravo/mydocker
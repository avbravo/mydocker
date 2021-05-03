#!/bin/sh
mvn clean package && docker build -t com.avbravo/mydocker .
docker rm -f mydocker || true && docker run -d -p 9080:9080 -p 9443:9443 --name mydocker com.avbravo/mydocker
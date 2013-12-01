#!/bin/bash -ex

cd supervisor
docker build -t quintenk/supervisor .
cd ../mongo
docker build -t quintenk/mongo .
docker build -t quintenk/mongo:2.4.8 .
cd ../jdk7-oracle
docker build -t quintenk/jdk-oracle .
docker build -t quintenk/jdk-oracle:7 .
cd ../elasticsearch
docker build -t quintenk/elasticsearch .
docker build -t quintenk/elasticsearch:0.90.5 .
cd ../tomcat7
docker build -t quintenk/tomcat .
docker build -t quintenk/tomcat:7 .
cd ../jenkins
docker build -t quintenk/jenkins .

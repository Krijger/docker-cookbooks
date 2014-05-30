#!/bin/bash -ex

cd supervisor
./build.sh
cd ../mongo
./build.sh
cd ../jdk7-oracle
./build.sh
cd ../elasticsearch-1.x
./build.sh
cd ../tomcat7
./build.sh
cd ../jenkins
./build.sh

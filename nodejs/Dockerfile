FROM quintenk/supervisor

MAINTAINER Quinten Krijger "https://github.com/Krijger"

RUN apt-get -y install python-software-properties
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install python g++ make nodejs
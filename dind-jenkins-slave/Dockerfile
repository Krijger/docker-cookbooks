#
# following steps are taken from https://github.com/jpetazzo/dind, which should be watched for changes
#

FROM quintenk/jdk-oracle:7
# note that jdk-oracle:7 is based on ubuntu:12.04 (same as latest), which is used in jpetazzo/dind
# FROM ubuntu

MAINTAINER Quinten Krijger "https://github.com/Krijger"

# RUN echo deb http://archive.ubuntu.com/ubuntu precise universe > /etc/apt/sources.list.d/universe.list
# RUN apt-get update -qq
RUN apt-get install -qqy iptables ca-certificates lxc
RUN wget https://get.docker.io/builds/Linux/x86_64/docker-latest -O /usr/local/bin/docker

RUN apt-get -y install dnsmasq

# RUN apt-get install -qqy subversion
# RUN apt-get install -qqy git
# RUN apt-get install -qqy maven

ADD ./dnsmasq.conf /etc/
ADD ./wrapdocker /usr/local/bin/
RUN chmod +x /usr/local/bin/docker /usr/local/bin/wrapdocker
# VOLUME /var/lib/docker

ADD runslave.sh /usr/local/bin/runslave
RUN chmod +x /usr/local/bin/runslave

ADD docker.sv.conf /etc/supervisor/conf.d/
ADD dnsmasq.sv.conf /etc/supervisor/conf.d/
ADD jenkins-slave.sv.conf /etc/supervisor/conf.d/
CMD supervisord -c /etc/supervisor.conf

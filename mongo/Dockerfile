FROM ubuntu:12.04

MAINTAINER Quinten Krijger

RUN apt-get update
RUN apt-get -y upgrade

RUN apt-get -y install make gcc wget 


# install supervisor (which has no package on 12.04) to manage our processes 
# the supervisor config file is more likely to change and is therefore added as a later step

RUN apt-get -y install python-setuptools
RUN easy_install supervisor
RUN mkdir -p /var/log/supervisor


# install mongoDB

RUN wget http://fastdl.mongodb.org/linux/mongodb-linux-x86_64-2.4.8.tgz -O /tmp/mongo.tar.gz
RUN mkdir -p /data/db
RUN ln -s /opt/mongodb/bin/mongo /usr/local/bin/mongo
RUN ln -s /opt/mongodb/bin/mongod /usr/local/bin/mongod
RUN (cd /tmp && tar zxf mongo.tar.gz && mv mongodb-* /opt/mongodb)
RUN rm -rf /tmp/*

EXPOSE 27017
ADD supervisord.conf /etc/supervisord.conf
CMD ["/usr/local/bin/supervisord"]

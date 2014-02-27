FROM quintenk/supervisor

MAINTAINER Quinten Krijger "https://github.com/Krijger"

RUN apt-get -y install wget

RUN wget http://fastdl.mongodb.org/linux/mongodb-linux-x86_64-2.4.9.tgz -O /tmp/mongo.tar.gz
RUN mkdir -p /data/db
RUN ln -s /opt/mongodb/bin/mongo /usr/local/bin/mongo
RUN ln -s /opt/mongodb/bin/mongod /usr/local/bin/mongod
RUN (cd /tmp && tar zxf mongo.tar.gz && mv mongodb-* /opt/mongodb)
RUN rm -rf /tmp/*

ADD mongo.sv.conf /etc/supervisor/conf.d/


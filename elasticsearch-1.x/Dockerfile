FROM quintenk/jdk-oracle:7

MAINTAINER Quinten Krijger "https://github.com/Krijger"

RUN wget -q -O - https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.1.1.tar.gz | tar -C /opt -xz

ADD elasticsearch.sv.conf /etc/supervisor/conf.d/
EXPOSE 9200
CMD supervisord -c /etc/supervisor.conf

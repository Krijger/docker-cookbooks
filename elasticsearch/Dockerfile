FROM quintenk/jdk7-oracle
MAINTAINER Quinten Krijger "https://github.com/Krijger"

RUN wget -q -O - https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.5.tar.gz \
  | tar -C /opt -xz

EXPOSE 9200
ADD supervisord.conf /etc/supervisord.conf
CMD ["/usr/local/bin/supervisord"]

Elasticsearch (a Docker image)
==============================

Available on the [Docker index] (https://index.docker.io/) as **quintenk/elasticsearch:0.90.5**

This image is meant as a base image for child images that setup [elasticsearch] (http://www.elasticsearch.org/) with application specific configuration. It has the basic installation of elasticsearch, which has default configuration and as such works out of the box and could be started with `docker run -p 9200 -w /opt/elasticsearch-0.90.5 -d quintenk/elasticsearch:0.90.5 bin/elasticsearch -f` (note that -f is needed to keep the process running, see the supervisord.conf in this project for the recommended way to do start the process).

A child container might have a Dockerfile ending in:

    ADD elasticsearch.sv.conf /etc/supervisor/conf.d/
    EXPOSE 9200
    CMD supervisord -c /etc/supervisor.conf

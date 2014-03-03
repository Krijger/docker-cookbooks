Elasticsearch (a Docker image)
==============================

Available on the [Docker index] (https://index.docker.io/) as **quintenk/elasticsearch:0.90.12**

This image is meant as a base image for child images that setup [elasticsearch] (http://www.elasticsearch.org/) with application specific configuration.

A child container might have a Dockerfile ending in:

    CMD supervisord -c /etc/supervisor.conf

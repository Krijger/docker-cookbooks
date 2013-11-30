Mongo (a Docker image)
======================

Available on the [Docker index] (https://index.docker.io/) as **quintenk/mongo:2.4.8**

A child container might have a Dockerfile ending in:

    EXPOSE 27017
    ADD supervisord.conf /etc/supervisord.conf
    CMD ["/usr/local/bin/supervisord"]
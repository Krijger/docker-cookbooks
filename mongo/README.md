Mongo (a Docker image)
======================

A child container might have a Dockerfile ending in:

    EXPOSE 27017
    ADD supervisord.conf /etc/supervisord.conf
    CMD ["/usr/local/bin/supervisord"]
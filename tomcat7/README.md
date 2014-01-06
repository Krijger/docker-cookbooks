Tomcat 7 (a Docker image)
=========================

Available on the [Docker index] (https://index.docker.io/) as **quintenk/tomcat:7**

Docker base image for [Apache Tomcat 7] (http://tomcat.apache.org/). An child image typically sets some configuration
and add a war file to create a web application image.

A child container might have a Dockerfile ending in:

    EXPOSE 8080
    # also expose debugging port
    EXPOSE 8000
    CMD supervisord -c /etc/supervisor.conf
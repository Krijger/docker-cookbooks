Supervisord (a Docker image)
============================

Available on the [Docker index] (https://index.docker.io/) **as quintenk/supervisor**

Based on ubuntu 12.04 LTS

Supervisord is a linux process manager ([Website](http://supervisord.org/ "Supervisord website")). It allows us to start containers with e.g.
- multiple processes
- a deamon / background process
- launch groups of processes in a specific order
- and more advanced stuff

This image is intended to be built on and is the base image for all recipes in [this project](https://github.com/Krijger/docker-cookbooks). Therefore, an child Dockerfile should not have to upgrade ubuntu.

To make easy use of supervisord, an inheriting Docker project should contain a file `supervisord.conf` (you will find examples of such files in this repositories projects.

Note that in an inheriting Dockerfile you should add the supervisor configuration, e.g. by `ADD supervisord.conf /etc/supervisord.conf` and optionally add a supervisor run command, e.g. `CMD ["/usr/local/bin/supervisord"]`

Supervisord (a Docker image)
============================

Available on the [Docker index] (https://index.docker.io/) as **quintenk/supervisor**

Based on ubuntu 12.04 LTS

Supervisord is a linux process manager ([Website](http://supervisord.org/ "Supervisord website")). It allows us to start containers with e.g.
- multiple processes
- a deamon / background process
- launch groups of processes in a specific order
- and more advanced stuff

This image is intended to be built on and is the base image for all recipes in [this project](https://github.com/Krijger/docker-cookbooks). Therefore, an child Dockerfile should not have to upgrade ubuntu.

To make easy use of supervisord, an inheriting Docker project should contain a file `[SOME_NAME].conf` and add that to /etc/supervisor/conf.d in the Dockerfile. Note that you can find examples of such files in this repositories projects.

To run supervisor, you can add `CMD supervisord -c /etc/supervisor.conf`.

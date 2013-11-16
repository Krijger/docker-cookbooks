Docker supervisor base image
============================

Based on ubuntu 12.04 LTS

Note that in an inheriting Dockerfile you should add the supervisor configuration, e.g. by "ADD supervisord.conf /etc/supervisord.conf" and optionally add a supervisor run command, e.g. "CMD ["/usr/local/bin/supervisord"]"

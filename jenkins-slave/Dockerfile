FROM quintenk/jdk-oracle:7

MAINTAINER Quinten Krijger "https://github.com/Krijger"

ADD runslave.sh /usr/local/bin/runslave
RUN chmod +x /usr/local/bin/runslave
ADD jenkins-slave.sv.conf /etc/supervisor/conf.d/
CMD supervisord -c /etc/supervisor.conf

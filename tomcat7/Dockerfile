FROM quintenk/jdk-oracle:7

MAINTAINER Quinten Krijger "https://github.com/Krijger"

RUN apt-get -y install tomcat7 && rm -rf /var/lib/tomcat7/webapps/ROOT

EXPOSE 8080
ADD tomcat.sv.conf /etc/supervisor/conf.d/

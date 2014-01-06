FROM quintenk/jdk-oracle:7

MAINTAINER Quinten Krijger "https://github.com/Krijger"

RUN apt-get -y install tomcat7 && rm -rf /var/lib/tomcat7/webapps/ROOT
RUN mkdir /usr/share/tomcat7/.jenkins && chown tomcat7:tomcat7 /usr/share/tomcat7/.jenkins

EXPOSE 8080
ADD tomcat.sv.conf /etc/supervisor/conf.d/

FROM quintenk/dood

MAINTAINER Quinten Krijger "https://github.com/Krijger

#
# Install JDK 7 from Oracle
#
RUN apt-get -y install python-software-properties
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update && apt-get -y upgrade
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get -y install oracle-java7-installer && apt-get clean
RUN update-alternatives --display java
ENV JAVA_HOME /usr/lib/jvm/java-7-oracle

#
# Jenkins slave stuff
#
ADD runslave.sh /usr/local/bin/runslave
RUN chmod +x /usr/local/bin/runslave
ADD jenkins-slave.sv.conf /etc/supervisor/conf.d/
CMD supervisord -c /etc/supervisor.conf

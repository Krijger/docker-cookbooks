FROM quintenk/tomcat:7

MAINTAINER Quinten Krijger "https://github.com/Krijger"

RUN mkdir /usr/share/tomcat7/.jenkins && chown tomcat7:tomcat7 /usr/share/tomcat7/.jenkins

ADD http://mirrors.jenkins-ci.org/war/latest/jenkins.war /var/lib/tomcat7/webapps/ROOT.war
RUN chown -R tomcat7:tomcat7 /var/lib/tomcat7/webapps

CMD supervisord -c /etc/supervisor.conf

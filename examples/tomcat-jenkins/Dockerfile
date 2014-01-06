FROM quintenk/tomcat:7

MAINTAINER Quinten Krijger "https://github.com/Krijger"

ADD http://mirrors.jenkins-ci.org/war/latest/jenkins.war /var/lib/tomcat7/webapps/ROOT.war
CMD supervisord -c /etc/supervisor.conf

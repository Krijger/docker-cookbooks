FROM quintenk/jenkins-slave

MAINTAINER Quinten Krijger "https://github.com/Krijger"

RUN apt-get -y install firefox xvfb
ADD xvfb.sv.conf /etc/supervisor/conf.d/
CMD supervisord -c /etc/supervisor.conf


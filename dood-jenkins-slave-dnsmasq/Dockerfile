FROM quintenk/dood-jenkins-slave

MAINTAINER Quinten Krijger "https://github.com/Krijger

#
# dnsmasq
#
RUN apt-get -y install dnsmasq
ADD ./dnsmasq.conf /etc/
ADD dnsmasq.sv.conf /etc/supervisor/conf.d/

CMD supervisord -c /etc/supervisor.conf

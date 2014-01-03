FROM ubuntu:12.04

MAINTAINER Quinten Krijger "https://github.com/Krijger"

# make sure the package repository is up to date and update ubuntu
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y upgrade

# install supervisor (which has no package on 12.04) to manage our processes
# the supervisor config file is more likely to change and is therefore added as a later step

RUN apt-get -y install python-setuptools
RUN easy_install supervisor
RUN mkdir -p /var/log/supervisor
# create directory for child images to store configuration in
RUN mkdir -p /etc/supervisor/conf.d

ADD supervisor.conf /etc/supervisor.conf

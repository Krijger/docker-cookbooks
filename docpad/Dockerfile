FROM quintenk/nodejs

MAINTAINER Quinten Krijger "https://github.com/Krijger"

RUN npm install -g docpad@6.63
RUN apt-get -y install git
RUN mkdir -p /var/lib/docpad/project
ADD .docpad.cson /
EXPOSE 9778
WORKDIR /var/lib/docpad/project
ENTRYPOINT ["docpad"]

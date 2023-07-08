FROM ubuntu:latest

MAINTAINER ybmsr <niviniveditha910@gmail.com>

WORKDIR /usr/apps/hello-docker/

RUN apt-get -y update

RUN apt-get install -y nodejs

RUN apt-get install -y npm

RUN npm install -g http-server

ADD . /user/apps/hello-docker/

ADD login.html /user/apps/hello-docker/login.html

CMD ["http-server", "-s"]

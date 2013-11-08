FROM ubuntu
MAINTAINER Fredrik Valdmanis and Stein Inge Morisbak

RUN echo deb http://archive.ubuntu.com/ubuntu precise universe >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -q -y nodejs npm

ADD . /src
RUN cd /src; npm install

EXPOSE 8080
ENTRYPOINT ["node", "/src/index.js"]

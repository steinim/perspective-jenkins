FROM ubuntu
MAINTAINER Fredrik Valdmanis and Stein Inge Morisbak

RUN echo deb http://archive.ubuntu.com/ubuntu precise universe >> /etc/apt/sources.list
RUN apt-get -q -y install python-software-properties
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -q -y unzip nodejs

ADD https://github.com/perspective/perspective-jenkins/archive/master.zip /src/
RUN cd /src ; unzip *.zip ; cd perspective-jenkins-master ; npm install


EXPOSE 8080
ENTRYPOINT ["node", "/src/perspective-jenkins-master/index.js"]

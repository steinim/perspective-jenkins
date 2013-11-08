FROM ubuntu
MAINTAINER Fredrik Valdmanis and Stein Inge Morisbak

RUN echo deb http://archive.ubuntu.com/ubuntu precise universe >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -q -y unzip nodejs npm

ADD https://github.com/perspective/perspective-jenkins/archive/master.zip /src/
RUN cd /src ; unzip *.zip ; cd perspective-jenkins-master ; npm install


EXPOSE 8080
ENTRYPOINT ["node", "/src/index.js"]

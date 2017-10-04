FROM golang

RUN apt-get update
RUN apt-get install curl

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

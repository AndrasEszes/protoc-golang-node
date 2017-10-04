FROM golang:alpine

RUN apt-get update
RUN apt-get install curl

RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN apt-get install -y nodejs

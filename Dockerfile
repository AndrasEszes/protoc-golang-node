FROM golang:1.9

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs
RUN node --version
RUN npm --version

RUN apt-get install -y wget unzip ssh

RUN wget -nv https://github.com/google/protobuf/releases/download/v3.4.0/protoc-3.4.0-linux-x86_64.zip
RUN unzip protoc-3.4.0-linux-x86_64.zip -d protoc-3.4.0
RUN mv protoc-3.4.0/bin/protoc /usr/bin
RUN protoc --version

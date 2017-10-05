FROM golang:1.9

RUN apt-get update
RUN apt-get install -y curl wget unzip git ssh tar ca-certificates

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

RUN wget https://github.com/google/protobuf/releases/download/v3.4.0/protoc-3.4.0-linux-x86_64.zip
RUN unzip protoc-3.4.0-linux-x86_64.zip -d /protoc-3.4.0
ADD /protoc-3.4.0/bin/protoc /usr/bin
RUN protoc --version

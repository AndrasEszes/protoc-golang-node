FROM golang:latest

RUN apt-get install -y curl unzip

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

RUN curl -O https://github.com/google/protobuf/releases/download/v3.4.0/protoc-3.4.0-linux-x86_64.zip
RUN unzip protoc-3.4.0-linux-x86_64.zip -d /protoc

ENV PATH="/protoc/bin:${PATH}"

RUN protoc --version

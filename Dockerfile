FROM debian:buster-slim

RUN apt-get -y update && \
    apt-get -y install nginx-full python3-pip curl procps && \
    pip3 install awscli

FROM debian:buster-slim
RUN apt-get -y update && \
    apt-get -y install python3-pip curl procps && \
    pip3 install awscli && \
    cd /tmp && \
    curl https://binaries.cockroachdb.com/cockroach-v21.1.1.linux-amd64.tgz | tar -xz && \
    mkdir -p /usr/local/lib/cockroach && \
    mkdir -p /cockroach && \
    cd cockroach* && \
    cp lib/* /usr/local/lib/cockroach && \
    cp cockroach /cockroach && \
    rm -rf /tmp/cockroach*

FROM ubuntu:bionic
COPY *.deb /tmp/
COPY decrypt.sh /

RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/' /etc/apt/sources.list \
    && apt-get update \
    && apt-get -y install multiarch-support readline-common libc6-dev libssl1.0.0 \
    && dpkg -i /tmp/*.deb \
    && rm -rf /var/lib/{apt,dpkg,cache,log}/ /tmp/*

CMD 

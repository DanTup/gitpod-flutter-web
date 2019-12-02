FROM debian:stretch

RUN apt-get update && apt-get -y install git curl unzip

RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /home/gitpod
WORKDIR /home/gitpod

ENV PUB_CACHE=/home/gitpod/.pub_cache
ENV PATH="$PATH:/home/gitpod/flutter/bin"

RUN git clone --branch custom-dwds https://github.com/DanTup/flutter && \
    /home/gitpod/flutter/bin/flutter config --enable-web

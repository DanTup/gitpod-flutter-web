FROM debian:stretch

RUN apt-get update && apt-get -y install git curl unzip

RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /home/gitpod
WORKDIR /home/gitpod

ENV PUB_CACHE=/home/gitpod/.pub_cache
ENV PATH="/home/gitpod/flutter/bin:$PATH"

RUN git clone https://github.com/flutter/flutter && \
    cd flutter && \
    git checkout 033b07c783162087f2ce2c07e2b41003c5285aad && \
    /home/gitpod/flutter/bin/flutter config --enable-web && \
    /home/gitpod/flutter/bin/flutter --version

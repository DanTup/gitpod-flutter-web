FROM debian:stretch

RUN apt-get update && apt-get -y install \
    git \
    curl \
    unzip \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /home/gitpod
WORKDIR /home/gitpod

ENV PUB_CACHE=/home/gitpod/.pub_cache

RUN git clone https://github.com/flutter/flutter -b stable --depth 1 && \
    cd flutter && \
    /home/gitpod/flutter/bin/flutter config --enable-web && \
    /home/gitpod/flutter/bin/flutter --version

ENV PATH="/home/gitpod/flutter/bin:$PATH"
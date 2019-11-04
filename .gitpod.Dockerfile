FROM debian:stretch

ENV PATH="$PATH":"/workspace/flutter/bin"

RUN apt-get update \
    && apt-get -y install git curl unzip
# procps wget lib32stdc++6 openjdk-8-jdk

# Clean up
RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /workspace
WORKDIR /workspace

RUN git clone --branch master https://github.com/flutter/flutter \
    && flutter doctor

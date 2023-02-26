FROM  python:3.10.9-slim@sha256:e15bb169d3a85f7e9c0f2d105ce628f13d71aed44b5d3d230b88f9653a9b19d5
ENV VERSION=4.10.0 
RUN apt-get update && apt-get install -y curl && \
    curl -fOL https://github.com/coder/code-server/releases/download/v$VERSION/code-server_${VERSION}_amd64.deb && \
    sudo dpkg -i code-server_${VERSION}_amd64.deb && \
    apt-get clean && \
    rm -rf \
    /tmp/* \
    /var/lib/apt/lists/* \
    /var/tmp/*

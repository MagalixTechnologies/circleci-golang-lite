FROM golang:1.14-alpine

RUN apk --update add --no-cache \
    ca-certificates \
    git \
    openssl \
    bash \
    docker \
    openssh-client \
    make \
    curl

ENTRYPOINT ["/bin/bash"]

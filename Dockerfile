FROM golang:1.16-alpine

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

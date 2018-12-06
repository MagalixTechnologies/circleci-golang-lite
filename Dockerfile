FROM golang:1.10.2-alpine3.7

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

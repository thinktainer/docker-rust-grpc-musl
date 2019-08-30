FROM alpine:edge AS deps

RUN apk update apk add --no-cache \
    --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing &&\
    apk add git build-base openssl-dev grpc perl \
    cmake rust cargo git openssh-client tar gzip ca-certificates

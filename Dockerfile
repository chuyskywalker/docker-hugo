FROM alpine:latest

ENV HUGO_VERSION=0.16

RUN apk add --no-cache wget ca-certificates \
 && cd /tmp/ \
 && wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux-64bit.tgz \
 && tar xzf hugo_${HUGO_VERSION}_linux-64bit.tgz \
 && rm -r hugo_${HUGO_VERSION}_linux-64bit.tgz \
 && mv hugo /usr/bin/hugo \
 && apk del wget ca-certificates

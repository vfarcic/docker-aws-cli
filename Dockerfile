FROM alpine

MAINTAINER Viktor Farcic <viktor@farcic.com>

RUN apk --update add python py-pip jq && \
    pip install awscli && \
    apk del py-pip && \
    rm -rf /var/cache/apk/*

ENV AWS_ACCESS_KEY_ID ""
ENV AWS_SECRET_ACCESS_KEY ""
ENV AWS_DEFAULT_REGION "us-east-1"

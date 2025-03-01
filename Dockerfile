FROM alpine:3.18
# renovate: datasource=repology depName=alpine_3_18/bash versioning=maven
ARG BASH_VERSION="5.2.15-r5"

RUN apk add bash=${BASH_VERSION} && \
    apk list --installed | grep "bash-${BASH_VERSION}"

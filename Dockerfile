FROM alpine:3.21
# renovate: datasource=repology depName=alpine_3_21/bash versioning=maven
ARG BASH_VERSION="5.2.37-r0"

RUN apk add bash=${BASH_VERSION} && \
    apk list --installed | grep "bash-${BASH_VERSION}"

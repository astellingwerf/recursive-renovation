FROM alpine:3.24
# renovate: datasource=repology depName=alpine_3_24/bash versioning=maven
ARG BASH_VERSION="5.2.37-r0"
# renovate: datasource=repology depName=alpine_3_24/curl versioning=maven
ARG CURL_VERSION="8.14.0-r2"

RUN apk add bash=${BASH_VERSION} curl=${CURL_VERSION} && \
    apk list --installed | grep "bash-${BASH_VERSION}" && \
    apk list --installed | grep "curl-${CURL_VERSION}"

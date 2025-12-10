FROM alpine:3.23
# renovate: datasource=repology depName=alpine_3_23/bash versioning=maven
ARG BASH_VERSION="5.3.3-r1"
# renovate: datasource=repology depName=alpine_3_23/curl versioning=maven
ARG CURL_VERSION="8.17.0-r1"

RUN apk add bash=${BASH_VERSION} curl=${CURL_VERSION} && \
    apk list --installed | grep "bash-${BASH_VERSION}" && \
    apk list --installed | grep "curl-${CURL_VERSION}"

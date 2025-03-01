FROM alpine:3.21
# renovate: datasource=repology depName=alpine_3_21/bash versioning=maven
ARG BASH_VERSION="5.1.16-r0"
# renovate: datasource=repology depName=alpine_3_21/curl versioning=maven
ARG CURL_VERSION="8.0.1-r0"

RUN apk add bash=${BASH_VERSION} curl=${CURL_VERSION} && \
    apk list --installed | grep "bash-${BASH_VERSION}" && \
    apk list --installed | grep "curl-${CURL_VERSION}"

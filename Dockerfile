FROM debian:jessie-slim

USER root
RUN apt-get update \
    && apt-get install -y collectl-utils \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

LABEL maintainer="Patrick Double <pat@patdouble.com>" \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.license="MPL-2.0" \
    org.label-schema.vendor="https://github.com/double16" \
    org.label-schema.name="collectl-utils" \
    org.label-schema.url="https://github.com/double16/collectl-utils" \
    org.label-schema.docker.dockerfile="Dockerfile" \
    org.label-schema.vcs-ref=$SOURCE_REF \
    org.label-schema.vcs-type='git' \
    org.label-schema.vcs-url="https://github.com/double16/collectl-utils.git"

FROM fabiodcorreia/base-alpine:1.0.0

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="fabiodcorreia"

# environment variables
ENV NODE_VERSION=12.17.0
ENV NPM_VERSION=6.14.4
ENV YARN_VERSION=1.22.4
ENV NODE_ENV production

RUN \
  echo "**** install runtime packages ****" && \
    apk add --no-cache nodejs npm yarn && \
  echo "**** cleanup ****" && \
  rm -rf \
	  /tmp/* \
	  /var/tmp/*

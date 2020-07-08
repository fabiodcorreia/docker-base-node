FROM fabiodcorreia/base-alpine:1.0.1

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="fabiodcorreia"

# environment variables
ENV NODE_ENV production

RUN \
  echo "**** install runtime packages ****" && \
    apk add --no-cache nodejs npm yarn && \
  echo "**** cleanup ****" && \
  rm -rf \
	  /tmp/* \
	  /var/tmp/*

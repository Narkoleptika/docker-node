FROM node:alpine
MAINTAINER Joey Marsh "joey@clever.ly"

ENV NPM_CONFIG_LOGLEVEL warn
EXPOSE 80
EXPOSE 443
EXPOSE 3000

ADD entrypoint /usr/local/bin/entrypoint
RUN mkdir -p /usr/src/app
VOLUME /usr/src/app
VOLUME /usr/src/app/node_modules
WORKDIR /usr/src/app

ENTRYPOINT ["entrypoint"]

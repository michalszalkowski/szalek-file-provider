FROM alpine:3.6

MAINTAINER Michał Szałkowski <michalszalkowski.com>

RUN apk update && apk add bash

COPY static_files /static_files
COPY docker-entrypoint.sh /

RUN chmod +x docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
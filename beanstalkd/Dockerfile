FROM alpine
VOLUME /var/lib/beanstalkd/data
LABEL maintainer="Mahmoud Zalt <mahmoud@zalt.me>"

#MS# add user
ARG PUID=1000
ENV PUID ${PUID}
ARG PGID=1000
ENV PGID ${PGID}

RUN addgroup -g ${PGID} beanstalkd && \
  adduser -D -G beanstalkd -u ${PUID} beanstalkd
#MS#

RUN apk add --no-cache beanstalkd

#MS# Switch to user beanstalkd instead of root
USER beanstalkd
#MS#

EXPOSE 11300
ENTRYPOINT ["/usr/bin/beanstalkd"]

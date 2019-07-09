FROM alpine
LABEL maintainer="Mahmoud Zalt <mahmoud@zalt.me>"

#MS# add user
ARG PUID=1000
ENV PUID ${PUID}
ARG PGID=1000
ENV PGID ${PGID}

RUN addgroup -g ${PGID} beanstalkd && \
  adduser -D -G beanstalkd -u ${PUID} beanstalkd

RUN mkdir -p /var/lib/beanstalkd/data/backup
RUN chown 1000:1000 /var/lib/beanstalkd/data/backup
RUN chmod 775 /var/lib/beanstalkd/data/backup
RUN chmod g+s /var/lib/beanstalkd/data/backup
#MS#

RUN apk add --no-cache beanstalkd

#MS# Switch to user beanstalkd instead of root
USER beanstalkd
#MS#

EXPOSE 11300
# CMD ["/usr/bin/beanstalkd", "-b", "/var/lib/beanstalkd/data/backup"]
CMD ["/usr/bin/beanstalkd"]

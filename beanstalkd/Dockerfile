FROM phusion/baseimage:latest
LABEL maintainer="Mahmoud Zalt <mahmoud@zalt.me>"

#MS# add user
ARG PUID=1000
ENV PUID ${PUID}
ARG PGID=1000
ENV PGID ${PGID}

RUN groupadd -g ${PGID} beanstalkd && \
  useradd -u ${PUID} -g beanstalkd -m beanstalkd && \
  usermod -p "*" beanstalkd
#MS#

ENV DEBIAN_FRONTEND noninteractive
ENV PATH /usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN apt-get update
RUN apt-get install -y beanstalkd
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#MS# Switch to user beanstalkd instead of root
USER beanstalkd
#MS#

VOLUME /var/lib/beanstalkd/data

EXPOSE 11300

CMD ["/usr/bin/beanstalkd"]

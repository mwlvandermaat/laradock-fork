
FROM mariadb:latest
LABEL maintainer="Mahmoud Zalt <mahmoud@zalt.me>"

#RUN useradd -m -ms /bin/bash mariadb
#RUN chown -R mariadb /var/lib/mysql
#RUN chgrp -R mariadb /var/lib/mysql
#RUN chmod 775 /var/lib/mysql

#ARG PUID=1000
#ENV PUID ${PUID}
#ARG PGID=1000
#ENV PGID ${PGID}

#RUN groupadd -g ${PGID} mariadb && \
#  useradd -u ${PUID} -g mariadb -m mariadb && \
#  usermod -p "*" mariadb

USER mysql
WORKDIR /var/lib/mysql


COPY my.cnf /etc/mysql/conf.d/my.cnf
COPY keys.txt /etc/mysqld/conf.d/keys.txt

CMD ["mysqld"]

EXPOSE 3306

#USER root
#delete key files from container after mariadb is loaded
#RUN rm /etc/mysqld/conf.d/keys.txt
#USER mysql

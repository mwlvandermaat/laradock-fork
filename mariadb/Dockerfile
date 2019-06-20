
FROM mariadb:latest
LABEL maintainer="Mahmoud Zalt <mahmoud@zalt.me>"

#MS# switch to user MYSQL instead of root
USER mysql
#MS#

WORKDIR /var/lib/mysql


COPY my.cnf /etc/mysql/conf.d/my.cnf
# COPY keys.txt /etc/mysqld/conf.d/keys.txt

CMD ["mysqld"]

EXPOSE 3306

#USER root
#delete key files from container after mariadb is loaded
#RUN rm /etc/mysqld/conf.d/keys.txt
#USER mysql

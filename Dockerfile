FROM livingstoneonline/base
MAINTAINER Nigel Banks <nigel.g.banks@gmail.com>

LABEL "License"="GPLv3" \
      "Version"="0.0.1"

EXPOSE 3306

ENV MYSQL_ROOT_USER=root \
    MYSQL_ROOT_PASSWORD=password

RUN apt-install mysql-client mysql-server && \
    rm -fr /var/lib/mysql/* && \
    cleanup

COPY rootfs /

FROM postgres:9.5

WORKDIR app/

RUN apt update && apt-get install bzip2

RUN mkdir -p /var/run/postgresql/9.5-main.pg_stat_tmp && \
    chown postgres /var/run/postgresql/9.5-main.pg_stat_tmp && \
    chgrp postgres /var/run/postgresql/9.5-main.pg_stat_tmp;


COPY ./entrypoint.sh ./
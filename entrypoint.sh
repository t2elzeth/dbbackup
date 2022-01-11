#!/bin/bash


chown postgres.postgres /var/lib/postgresql/9.5/main/

runuser -l postgres -c "/usr/lib/postgresql/9.5/bin/postgres -c config-file=/etc/postgresql.conf"
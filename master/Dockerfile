FROM postgres:17.4

COPY --chmod=777 ./pg_hba.conf /my-init-dir/pg_hba.conf

COPY --chown=777 ./sql-init.sql /docker-entrypoint-initdb.d/sql-init.sql

COPY --chmod=777 ./init-script.sh /docker-entrypoint-initdb.d/init-script.sh
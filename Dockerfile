FROM bitnami/pgbouncer:latest

COPY pgbouncer.crt /opt/bitnami/pgbouncer/certs/pgbouncer.crt
COPY pgbouncer.key /opt/bitnami/pgbouncer/certs/pgbouncer.key

RUN [ -x /opt/bitnami/scripts/pgbouncer/entrypoint.sh ]

COPY custom-entrypoint.sh /opt/bitnami/scripts/pgbouncer/custom-entrypoint.sh

ENTRYPOINT [ "/opt/bitnami/scripts/pgbouncer/custom-entrypoint.sh" ]

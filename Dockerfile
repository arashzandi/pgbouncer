FROM bitnami/pgbouncer:latest

COPY pgbouncer.crt /opt/bitnami/pgbouncer/certs/pgbouncer.crt
COPY pgbouncer.key /opt/bitnami/pgbouncer/certs/pgbouncer.key

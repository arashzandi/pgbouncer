FROM bitnami/pgbouncer:latest

COPY pgbouncer.crt /opt/bitnami/pgbouncer/certs/pgbouncer.crt
COPY pgbouncer.key /opt/bitnami/pgbouncer/certs/pgbouncer.key
COPY init_certificates.sh /opt/bitnami/pgbouncer/custom_scripts/init_certificates.sh

# RUN [ -x /opt/bitnami/scripts/pgbouncer/entrypoint.sh ]

# COPY custom-entrypoint.sh /opt/bitnami/scripts/pgbouncer/custom-entrypoint.sh

# ENTRYPOINT [ "/opt/bitnami/scripts/pgbouncer/custom-entrypoint.sh" ]

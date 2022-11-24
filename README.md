# PgBouncer with SSL

Based on a true [story](https://www.crunchydata.com/blog/improving-pgbouncer-security-with-tlsssl)

Build and run Postgres and PgBouncer locally:
```
docker-compose up --build
```

Test if SSL works:
```
PGSSLMODE=require PGCONNECT_TIMEOUT=5 psql "postgresql://postgres:password@0.0.0.0:5432/postgres"
```

Build and push the image to ECR:
```
./build_and_push.sh
```

If you intend to use the image in ECS, remember to pass the following environment variables:
```
POSTGRESQL_USERNAME= <nom>
POSTGRESQL_PASSWORD= <passwuert>
POSTGRESQL_DATABASE= <database name>
POSTGRESQL_HOST= <RDS Endpoint>
POOL_MODE=transaction
PGBOUNCER_CLIENT_TLS_SSLMODE=require
PGBOUNCER_CLIENT_TLS_CERT_FILE=/opt/bitnami/pgbouncer/certs/pgbouncer.crt
PGBOUNCER_CLIENT_TLS_KEY_FILE=/opt/bitnami/pgbouncer/certs/pgbouncer.key
```

FROM bitnami/pgbouncer:latest

CMD openssl genrsa -des3 -out /opt/bitnami/pgbouncer/certs/pgbouncer.key -passout pass:foobar 2048
CMD openssl rsa -in /opt/bitnami/pgbouncer/certs/pgbouncer.key -out /opt/bitnami/pgbouncer/certs/pgbouncer.key -passin pass:foobar
CMD openssl req -new -key /opt/bitnami/pgbouncer/certs/pgbouncer.key -days 3650 -out /opt/bitnami/pgbouncer/certs/pgbouncer.crt -x509 -subj '/C=US/ST=New York/L=New York/O=Go Deed Inc./CN=Deed Operations/emailAddress=arash+pgbouncer-cert@joindeed.com'

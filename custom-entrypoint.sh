#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

# openssl genrsa -des3 -out pgbouncer.key -passout pass:foobar 2048
# openssl rsa -in pgbouncer.key -out pgbouncer.key -passin pass:foobar
# openssl req -new -key pgbouncer.key -days 3650 -out pgbouncer.crt -x509 -subj '/C=US/ST=New York/L=New York/O=Go Deed Inc./CN=Deed Operations/emailAddress=arash+pgbouncer-cert@joindeed.com'

exec /opt/bitnami/scripts/pgbouncer/entrypoint.sh /opt/bitnami/scripts/pgbouncer/run.sh "${@:2}"

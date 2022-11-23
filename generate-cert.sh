#!/bin/bash
set -e

openssl genrsa -des3 -out pgbouncer.key -passout pass:foobar 2048
openssl rsa -in pgbouncer.key -out pgbouncer.key -passin pass:foobar
openssl req -new -key pgbouncer.key -days 3650 -out pgbouncer.crt -x509 -subj '/C=US/ST=New York/L=New York/O=Go Deed Inc./CN=Deed Operations/emailAddress=arash+pgbouncer-cert@joindeed.com'

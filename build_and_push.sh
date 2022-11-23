#!/bin/bash

registry="709336708202.dkr.ecr.us-east-2.amazonaws.com"

docker build . --tag "${registry}"/pgbouncer:ssl
aws sso login --profile shared
AWS_PROFILE=shared aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin "${registry}"
docker push "${registry}"/pgbouncer:ssl

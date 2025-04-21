#!/bin/sh

helm repo add sealed-secrets https://bitnami-labs.github.io/sealed-secrets
helm repo update

helm search repo sealed-secrets/sealed-secrets --versions \
  | grep "0.29.0"

CHART_VERSION=2.17.2
helm pull sealed-secrets/sealed-secrets \
  --version ${CHART_VERSION} \
  --destination ./artifacts

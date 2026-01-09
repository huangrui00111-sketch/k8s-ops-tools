#!/bin/bash

DEPLOY=$1
NAMESPACE=${2:-default}

if [ -z "$DEPLOY" ]; then
  echo "Usage: $0 <deployment-name> [namespace]"
  exit 1
fi

kubectl rollout status deployment "$DEPLOY" -n "$NAMESPACE"

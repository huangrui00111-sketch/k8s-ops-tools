#!/bin/bash

DEPLOY=$1
NAMESPACE=${2:-default}

kubectl rollout restart deployment "$DEPLOY" -n "$NAMESPACE"
kubectl rollout status deployment "$DEPLOY" -n "$NAMESPACE"

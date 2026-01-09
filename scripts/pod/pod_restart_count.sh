#!/bin/bash

NAMESPACE=${1:-default}

echo "Pod restart count in namespace: $NAMESPACE"
kubectl get pods -n "$NAMESPACE" \
  -o custom-columns=NAME:.metadata.name,RESTARTS:.status.containerStatuses[*].restartCount

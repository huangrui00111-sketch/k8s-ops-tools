#!/bin/bash

SVC=$1
NAMESPACE=${2:-default}

if [ -z "$SVC" ]; then
  echo "Usage: $0 <service-name> [namespace]"
  exit 1
fi

echo "Service:"
kubectl get svc "$SVC" -n "$NAMESPACE" -o wide

echo ""
echo "Endpoints:"
kubectl get endpoints "$SVC" -n "$NAMESPACE"

echo ""
echo "Service detail:"
kubectl describe svc "$SVC" -n "$NAMESPACE"

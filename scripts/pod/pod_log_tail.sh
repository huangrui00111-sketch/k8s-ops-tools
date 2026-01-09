#!/bin/bash

POD=$1
NAMESPACE=${2:-default}

if [ -z "$POD" ]; then
  echo "Usage: $0 <pod-name> [namespace]"
  exit 1
fi

kubectl logs -n "$NAMESPACE" "$POD" --tail=100 -f

#!/bin/bash

NAMESPACE=${1:-default}

echo "PVC status in namespace: $NAMESPACE"
echo ""

kubectl get pvc -n "$NAMESPACE"

echo ""
echo "Pending PVC detail:"
kubectl get pvc -n "$NAMESPACE" | grep Pending | awk '{print $1}' | while read pvc; do
  kubectl describe pvc "$pvc" -n "$NAMESPACE"
done

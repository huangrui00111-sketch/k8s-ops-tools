#!/bin/bash

NAMESPACE=${1:-default}

echo "Ingress check in namespace: $NAMESPACE"
echo ""

kubectl get ingress -n "$NAMESPACE" -o wide

echo ""
echo "Ingress details:"
kubectl describe ingress -n "$NAMESPACE"

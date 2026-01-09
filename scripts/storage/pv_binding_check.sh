#!/bin/bash

echo "PV binding status"
echo ""

kubectl get pv

echo ""
echo "Unbound PVs:"
kubectl get pv | grep Available || echo "No available PVs"

echo ""
echo "PVC-PV binding:"
kubectl get pvc -A -o wide

#!/bin/bash

echo "Checking cluster info..."
kubectl cluster-info || exit 1

echo ""
echo "Nodes status:"
kubectl get nodes -o wide

echo ""
echo "NotReady nodes:"
kubectl get nodes | grep -v Ready || echo "All nodes are Ready ✅"

echo ""
echo "System pods:"
kubectl get pods -n kube-system
#!/bin/bash

echo "=============================="
echo "Kubernetes Daily Inspection"
echo "Time: $(date)"
echo "Context: $(kubectl config current-context)"
echo "=============================="

echo ""
echo "Cluster info"
kubectl cluster-info

echo ""
echo "Node status"
kubectl get nodes -o wide

echo ""
echo "NotReady nodes"
kubectl get nodes | grep -v Ready || echo "All nodes are Ready ✅"

echo ""
echo "Node resource usage"
kubectl top nodes || echo "metrics-server not available"

echo ""
echo "Abnormal pods (non-Running)"
kubectl get pods -A | egrep -v 'Running|Completed' || echo "No abnormal pods ✅"

echo ""
echo "Restart count TOP 10"
kubectl get pods -A \
  -o custom-columns=NAMESPACE:.metadata.namespace,NAME:.metadata.name,RESTARTS:.status.containerStatuses[*].restartCount \
  | sort -k3 -nr | head

echo ""
echo "Events (last 20)"
kubectl get events -A --sort-by='.lastTimestamp' | tail -n 20

echo ""
echo "Daily inspection completed"

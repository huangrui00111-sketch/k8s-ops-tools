#!/bin/bash

echo "Node resource usage:"
kubectl top nodes

echo ""
echo "Pod resource usage (Top 10):"
kubectl top pods -A | sort -k3 -nr | head

#!/bin/bash

set -e

CLUSTER_NAME="diploma"

echo "Deleting old cluster if exists..."
k3d cluster delete $CLUSTER_NAME || true

echo "Creating k3d cluster..."
k3d cluster create $CLUSTER_NAME \
  --servers 1 \
  --agents 2 \
  -p "8080:80@loadbalancer"

echo "Cluster created successfully."

kubectl get nodes
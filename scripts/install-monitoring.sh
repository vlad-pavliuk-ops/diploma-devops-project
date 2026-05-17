#!/bin/bash

set -e

echo "Adding Helm repository..."
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts || true
helm repo update

echo "Creating monitoring namespace..."
kubectl create namespace monitoring || true

echo "Installing Prometheus and Grafana..."
helm upgrade --install monitoring prometheus-community/kube-prometheus-stack \
  --namespace monitoring

echo "Monitoring installed successfully."
echo "Check pods:"
echo "kubectl get pods -n monitoring"
echo ""
echo "Open Grafana:"
echo "kubectl port-forward svc/monitoring-grafana -n monitoring 3001:80"
echo ""
echo "Get Grafana password:"
echo "kubectl get secret monitoring-grafana -n monitoring -o jsonpath='{.data.admin-password}' | base64 -d && echo"
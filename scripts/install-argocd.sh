#!/bin/bash

set -e

echo "Creating ArgoCD namespace..."
kubectl create namespace argocd || true

echo "Installing ArgoCD..."
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

echo "Waiting for ArgoCD pods..."
kubectl wait --for=condition=available --timeout=300s deployment/argocd-server -n argocd

echo "Applying ArgoCD application..."
kubectl apply -f argocd/application.yaml

echo "ArgoCD installed successfully."
echo "To open UI:"
echo "kubectl port-forward svc/argocd-server -n argocd 8081:443"
echo ""
echo "Get password:"
echo "kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath='{.data.password}' | base64 -d && echo"
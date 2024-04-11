#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"

kubectl config use kind-test 


# Create namespaces
kubectl create namespace argocd || true
kubectl create namespace external-secrets || true
kubectl create namespace crossplane-system || true
kubectl create namespace apps || true
kubectl create namespace reloader || true

# Deploy Argocd
$SCRIPT_DIR/argocd/deploy.sh

# Setup Crossplane
$SCRIPT_DIR/crossplane/deploy.sh

# Setup External Secrets
$SCRIPT_DIR/external-secrets/deploy.sh

# Setup Apps
$SCRIPT_DIR/apps/deploy.sh


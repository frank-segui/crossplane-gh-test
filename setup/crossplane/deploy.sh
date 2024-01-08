#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"

kubectl create namespace crossplane-system || true
kubectl apply -f $SCRIPT_DIR/provider-config-github-secret.yml
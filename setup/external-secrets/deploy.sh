#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"

kubectl create namespace external-secrets || true
kubectl apply -f $SCRIPT_DIR/gcpsm-secret.yml


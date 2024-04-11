#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"

kubectl cluster-info --context kind-test

k config use kind-test 

# Deploy Argocd
$SCRIPT_DIR/argocd/deploy.sh

# Setup Crossplane
# $SCRIPT_DIR/crossplane/deploy.sh

# Setup Apps
$SCRIPT_DIR/apps/deploy.sh
#!/bin/bash

kubectl config use kind-test 

# Deploy Argocd
$SCRIPT_DIR/argocd/deploy.sh

# Setup Crossplane
$SCRIPT_DIR/crossplane/deploy.sh

# Setup External Secrets
$SCRIPT_DIR/external-secrets/deploy.sh
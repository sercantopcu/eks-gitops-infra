#!/bin/bash

set -e

CLUSTER_NAME="eks-lab"
REGION="us-east-1"
AWS_PROFILE="default"

echo "🔧 Running aws eks update-kubeconfig..."
aws eks update-kubeconfig \
  --name "$CLUSTER_NAME" \
  --region "$REGION" \
  --profile "$AWS_PROFILE"

echo "✅ kubeconfig updated for cluster $CLUSTER_NAME!"

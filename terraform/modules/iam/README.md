# IAM Module for EKS

Creates IAM roles required by:

- EKS control plane
- EKS worker node groups

## Outputs

| Name              | Description                         |
|-------------------|-------------------------------------|
| cluster_role_arn  | Role ARN for the EKS control plane  |
| node_role_arn     | Role ARN for the EKS worker nodes   |

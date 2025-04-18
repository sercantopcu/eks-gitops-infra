variable "aws_region" {
  description = "AWS region to deploy resources in"
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS CLI profile name"
  default     = "default"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  default     = "eks-lab"
}

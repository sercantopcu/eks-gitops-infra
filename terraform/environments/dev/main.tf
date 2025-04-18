module "vpc" {
  source   = "../../modules/vpc"
  name     = var.cluster_name
  vpc_cidr = "10.0.0.0/16"
  azs      = ["us-east-1a", "us-east-1b"]
}

module "iam" {
  source = "../../modules/iam"
}

module "eks" {
  source           = "../../modules/eks"
  cluster_name     = var.cluster_name
  subnet_ids       = module.vpc.private_subnet_ids
  cluster_role_arn = module.iam.cluster_role_arn
  node_role_arn    = module.iam.node_role_arn
}

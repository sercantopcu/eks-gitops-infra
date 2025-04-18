terraform {
  backend "s3" {
    bucket         = "sercan-gitops-terraform-state"
    key            = "eks/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

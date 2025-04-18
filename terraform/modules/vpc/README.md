# VPC Module

Creates a production-ready VPC with:

- Public and private subnets in two AZs
- NAT Gateway for private subnet outbound internet
- Internet Gateway for public access
- Route tables for each subnet type

## Inputs

| Name      | Description               | Default        |
|-----------|---------------------------|----------------|
| name      | Prefix for naming         | N/A            |
| vpc_cidr  | VPC CIDR block            | `10.0.0.0/16`  |
| azs       | List of availability zones| `["us-east-1a", "us-east-1b"]` |

## Outputs

| Name               | Description            |
|--------------------|------------------------|
| vpc_id             | The VPC ID             |
| public_subnet_ids  | List of public subnets |
| private_subnet_ids | List of private subnets|

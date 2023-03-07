# Example of how to pass variable for database password:
# terraform apply -var="db_password=..."
# Environment variables can also be used https://www.terraform.io/language/values/variables#environment-variables

# Provision Intel Optimized AWS mariadb server
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 3.18.1"
  name    = "my-vpc"
  cidr    = "10.0.0.0/16"



  azs             = ["us-east-2a", "us-east-2b", "us-east-2c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]


  tags = {
    Owner    = "Intel Cloud Optimization Modules for Terraform"
    Duration = "4"
  }
}

module "optimized-mariadb-server" {
  source               = "intel/aws-mariadb/intel"
  version              = "~> 1.0.0"
  rds_identifier = "mariadb-dev"
  db_password    = var.db_password
  multi_az       = false
  vpc_id         = module.vpc.vpc_id
  db_tags = {
    Owner    = "Intel Cloud Optimization Modules for Terraform"
    Duration = "1"
  }
  ingress_cidr_blocks = ["10.10.1.0/24"]
}

# Environment variables can also be used https://www.terraform.io/language/values/variables#environment-variables

# Provision Intel Optimized AWS MariaDB server in default vpc of the selected AWS region and create a read replica in a different 
# availability zone than the primary database server

module "optimized-mariadb-server" {
  source         = "intel/aws-mariadb/intel"
  rds_identifier = "mariadb-dev"
  db_password    = var.db_password

  # Update the vpc_id below for the VPC that this module will use. Find the default vpc-id in your AWS account
  # from the AWS console or using CLI commands. In your AWS account, the vpc-id is represented as "vpc-",
  # followed by a set of alphanumeric characters. One sample representation of a vpc-id is vpc-0a6734z932p20c2m4
  vpc_id = "vpc-5ea60f23"
}


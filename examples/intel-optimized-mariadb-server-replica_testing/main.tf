# Environment variables can also be used https://www.terraform.io/language/values/variables#environment-variables

# Provision Intel Optimized AWS MariaDB server in default vpc of the selected AWS region and create a read replica in a different 
# availability zone than the primary database server

module "optimized-mariadb-server" {
  source         = "github.com/intel/terraform-intel-aws-mariadb"
  rds_identifier = "mariadb-dev"
  db_password    = var.db_password

  # Update the vpc_id below for the VPC that this module will use. Find the default vpc-id in your AWS account
  # from the AWS console or using CLI commands. In your AWS account, the vpc-id is represented as "vpc-",
  # followed by a set of alphanumeric characters. One sample representation of a vpc-id is vpc-0a6734z932p20c2m4
  vpc_id = "<ENTER VPC_ID HERE>"
}

module "optimized-mariadb-server-read-replica" {
  source         = "github.com/intel/terraform-intel-aws-mariadb"
  rds_identifier = "mariadb-dev-replica"
  db_password    = var.db_password

  # Update the vpc-id below. Use the same vpc-id as the one used in the prior module.
  vpc_id                           = "<ENTER VPC_ID HERE>"
  aws_database_instance_identifier = "mariadb-rr"
  db_replicate_source_db           = module.optimized-mariadb-server.db_instance_id
  kms_key_id                       = module.optimized-mariadb-server.db_kms_key_id
}
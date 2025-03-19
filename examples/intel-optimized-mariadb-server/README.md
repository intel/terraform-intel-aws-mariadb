<p align="center">
  <img src="https://github.com/intel/terraform-intel-aws-mariadb/blob/main/images/logo-classicblue-800px.png" alt="Intel Logo" width="250"/>
</p>

# Intel® Optimized Cloud Modules for Terraform

© Copyright 2024, Intel Corporation

## AWS RDS MariaDB module - Intel Optimized MariaDB Server Example

Configuration in this directory creates an Amazon RDS instance for MariaDB. The instance is created on an Intel Sapphire Rapids db.m7i.2xlarge by default. The instance is pre-configured with parameters within the database parameter group that is optimized for Intel architecture. The goal of this module is to get you started with a database configured to run best on Intel architecture.

As you configure your application's environment, choose the configurations for your infrastructure that matches your application's requirements.

The MariaDB Optimizations were based off [Intel Xeon Tuning guides](<https://www.intel.com/content/www/us/en/developer/articles/guide/open-source-database-tuning-guide-on-xeon-systems.html>)

## Usage

**See examples folder for complete examples.**


By default, you will only have to pass three variables
```hcl
db_password
rds_identifier
vpc_id
```

variables.tf
```hcl
variable "db_password" {
  description = "Password for the master database user."
  type        = string
  sensitive   = true
}
```

main.tf
```hcl
module "optimized-mariadb-server" {
  source         = "intel/aws-mariadb/intel"
  db_password    = var.db_password
  rds_identifier = "<NAME-FOR-RDS-INSTANCE>"
  # Update the vpc_id below for the VPC that this module will use. Find the vpc-id in your AWS account
  # from the AWS console or using CLI commands. In your AWS account, the vpc-id is represented as "vpc-",
  # followed by a set of alphanumeric characters. One sample representation of a vpc-id is vpc-0a6734z932p20c2m4
  vpc_id = "<YOUR-VPC-ID-HERE>"
}
```

Run terraform

```bash
export TF_VAR_db_password ='<USE_A_STRONG_PASSWORD>'

terraform init  
terraform plan
terraform apply
```

## Considerations

- Check in the variables.tf file for the region where this database instance will be created. It is defaulted to run in us-east-2 region within AWS. If you want to run it within any other region, make changes accordingly within the Terraform code

- Check the variables.tf file for incoming ports allowed to connect to the database instance. The variable name is ingress_cidr_blocks. Currently it is defaulted to be open to the world like 0.0.0.0/0. Before runing the code, configure it based on specific security policies and requirements within the environment it is being implemented

- Check if you getting errors while running this Terraform code due to AWS defined soft limits or hard limits within your AWS account. Please work with your AWS support team to resolve limit constraints

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.3.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.36.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_optimized-mariadb-server"></a> [optimized-mariadb-server](#module\_optimized-mariadb-server) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_db_password"></a> [db\_password](#input\_db\_password) | Password for the master database user. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Target AWS region to deploy workloads in. | `string` | `"us-east-2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_class"></a> [instance\_class](#output\_instance\_class) | Instance class in use for the database instance that was created. |
| <a name="output_mariadb_address"></a> [mariadb\_address](#output\_mariadb\_address) | mariadb instance hostname |
| <a name="output_mariadb_allocated_storage"></a> [mariadb\_allocated\_storage](#output\_mariadb\_allocated\_storage) | Storage that was allocated to the instance when it configured. |
| <a name="output_mariadb_arn"></a> [mariadb\_arn](#output\_mariadb\_arn) | ARN of the database instance. |
| <a name="output_mariadb_backup_window"></a> [mariadb\_backup\_window](#output\_mariadb\_backup\_window) | Configured backup window for the database instance. |
| <a name="output_mariadb_db_name"></a> [mariadb\_db\_name](#output\_mariadb\_db\_name) | Name of the database that was created (if specified) during instance creation. |
| <a name="output_mariadb_endpoint"></a> [mariadb\_endpoint](#output\_mariadb\_endpoint) | Connection endpoint for the mariadb instance that has been created |
| <a name="output_mariadb_engine"></a> [mariadb\_engine](#output\_mariadb\_engine) | Database instance engine that was configured. |
| <a name="output_mariadb_kms_key_id"></a> [mariadb\_kms\_key\_id](#output\_mariadb\_kms\_key\_id) | KMS key that is configured on the database instance if storage encryption is enabled. |
| <a name="output_mariadb_maintenance_window"></a> [mariadb\_maintenance\_window](#output\_mariadb\_maintenance\_window) | Maintainence window for the database instance. |
| <a name="output_mariadb_max_allocated_storage"></a> [mariadb\_max\_allocated\_storage](#output\_mariadb\_max\_allocated\_storage) | Maximum storage allocation that is configured on the database instance. |
| <a name="output_mariadb_password"></a> [mariadb\_password](#output\_mariadb\_password) | mariadb instance master password. |
| <a name="output_mariadb_port"></a> [mariadb\_port](#output\_mariadb\_port) | mariadb instance port |
| <a name="output_mariadb_status"></a> [mariadb\_status](#output\_mariadb\_status) | Status of the database instance that was created. |
| <a name="output_mariadb_username"></a> [mariadb\_username](#output\_mariadb\_username) | mariadb instance root username |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

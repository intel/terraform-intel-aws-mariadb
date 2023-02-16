# intel-optimized-mariadb-server

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

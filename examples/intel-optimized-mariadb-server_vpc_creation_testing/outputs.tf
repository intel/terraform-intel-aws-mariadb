output "mariadb_address" {
  description = "MariaDB instance hostname"
  value       = module.optimized-mariadb-server.db_hostname
}

output "mariadb_port" {
  description = "mariadb instance port"
  value       = module.optimized-mariadb-server.db_port
}

output "mariadb_username" {
  description = "mariadb instance root username"
  value       = module.optimized-mariadb-server.db_username
  sensitive   = true
}

output "mariadb_password" {
  description = "mariadb instance master password."
  value       = module.optimized-mariadb-server.db_password
  sensitive   = true
}

output "mariadb_endpoint" {
  value       = module.optimized-mariadb-server.db_endpoint
  description = "Connection endpoint for the MariaDB instance that has been created"
}

output "mariadb_engine" {
  value       = module.optimized-mariadb-server.db_engine
  description = "Database instance engine that was configured."
}

output "mariadb_status" {
  description = "Status of the database instance that was created."
  value       = module.optimized-mariadb-server.db_status
}

output "instance_class" {
  description = "Instance class in use for the database instance that was created."
  value       = module.optimized-mariadb-server.instance_class
}

output "mariadb_allocated_storage" {
  description = "Storage that was allocated to the instance when it configured."
  value       = module.optimized-mariadb-server.db_allocated_storage
}

output "mariadb_max_allocated_storage" {
  description = "Maximum storage allocation that is configured on the database instance."
  value       = module.optimized-mariadb-server.db_max_allocated_storage
}

output "mariadb_arn" {
  description = "ARN of the database instance."
  value       = module.optimized-mariadb-server.db_arn
}

output "mariadb_kms_key_id" {
  description = "KMS key that is configured on the database instance if storage encryption is enabled."
  value       = module.optimized-mariadb-server.db_kms_key_id
}

output "mariadb_backup_window" {
  description = "Configured backup window for the database instance."
  value       = module.optimized-mariadb-server.db_backup_window
}

output "mariadb_maintenance_window" {
  description = "Maintainence window for the database instance."
  value       = module.optimized-mariadb-server.db_maintenance_window
}

output "mariadb_db_name" {
  description = "Name of the database that was created (if specified) during instance creation."
  value       = module.optimized-mariadb-server.db_name
}
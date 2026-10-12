output "generic_endpoints_id" {
  description = "Map of id values across all generic_endpoints, keyed the same as var.generic_endpoints except keys with no id are omitted"
  value       = { for k, v in vault_generic_endpoint.generic_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "generic_endpoints_data_json" {
  description = "Map of data_json values across all generic_endpoints, keyed the same as var.generic_endpoints except keys with no data_json are omitted"
  value       = { for k, v in vault_generic_endpoint.generic_endpoints : k => v.data_json if v.data_json != null && length(v.data_json) > 0 }
  sensitive   = true
}
output "generic_endpoints_disable_delete" {
  description = "Map of disable_delete values across all generic_endpoints, keyed the same as var.generic_endpoints except keys with no disable_delete are omitted"
  value       = { for k, v in vault_generic_endpoint.generic_endpoints : k => v.disable_delete if v.disable_delete != null }
}
output "generic_endpoints_disable_read" {
  description = "Map of disable_read values across all generic_endpoints, keyed the same as var.generic_endpoints except keys with no disable_read are omitted"
  value       = { for k, v in vault_generic_endpoint.generic_endpoints : k => v.disable_read if v.disable_read != null }
}
output "generic_endpoints_ignore_absent_fields" {
  description = "Map of ignore_absent_fields values across all generic_endpoints, keyed the same as var.generic_endpoints except keys with no ignore_absent_fields are omitted"
  value       = { for k, v in vault_generic_endpoint.generic_endpoints : k => v.ignore_absent_fields if v.ignore_absent_fields != null }
}
output "generic_endpoints_namespace" {
  description = "Map of namespace values across all generic_endpoints, keyed the same as var.generic_endpoints except keys with no namespace are omitted"
  value       = { for k, v in vault_generic_endpoint.generic_endpoints : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "generic_endpoints_path" {
  description = "Map of path values across all generic_endpoints, keyed the same as var.generic_endpoints except keys with no path are omitted"
  value       = { for k, v in vault_generic_endpoint.generic_endpoints : k => v.path if v.path != null && length(v.path) > 0 }
}
output "generic_endpoints_write_data" {
  description = "Map of write_data values across all generic_endpoints, keyed the same as var.generic_endpoints except keys with no write_data are omitted"
  value       = { for k, v in vault_generic_endpoint.generic_endpoints : k => v.write_data if v.write_data != null && length(v.write_data) > 0 }
}
output "generic_endpoints_write_data_json" {
  description = "Map of write_data_json values across all generic_endpoints, keyed the same as var.generic_endpoints except keys with no write_data_json are omitted"
  value       = { for k, v in vault_generic_endpoint.generic_endpoints : k => v.write_data_json if v.write_data_json != null && length(v.write_data_json) > 0 }
}
output "generic_endpoints_write_fields" {
  description = "Map of write_fields values across all generic_endpoints, keyed the same as var.generic_endpoints except keys with no write_fields are omitted"
  value       = { for k, v in vault_generic_endpoint.generic_endpoints : k => v.write_fields if v.write_fields != null && length(v.write_fields) > 0 }
}


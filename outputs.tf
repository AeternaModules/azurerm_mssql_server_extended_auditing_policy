output "mssql_server_extended_auditing_policies_id" {
  description = "Map of id values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mssql_server_extended_auditing_policies_audit_actions_and_groups" {
  description = "Map of audit_actions_and_groups values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.audit_actions_and_groups if v.audit_actions_and_groups != null && length(v.audit_actions_and_groups) > 0 }
}
output "mssql_server_extended_auditing_policies_enabled" {
  description = "Map of enabled values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.enabled if v.enabled != null }
}
output "mssql_server_extended_auditing_policies_log_monitoring_enabled" {
  description = "Map of log_monitoring_enabled values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.log_monitoring_enabled if v.log_monitoring_enabled != null }
}
output "mssql_server_extended_auditing_policies_predicate_expression" {
  description = "Map of predicate_expression values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.predicate_expression if v.predicate_expression != null && length(v.predicate_expression) > 0 }
}
output "mssql_server_extended_auditing_policies_retention_in_days" {
  description = "Map of retention_in_days values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.retention_in_days if v.retention_in_days != null }
}
output "mssql_server_extended_auditing_policies_server_id" {
  description = "Map of server_id values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.server_id if v.server_id != null && length(v.server_id) > 0 }
}
output "mssql_server_extended_auditing_policies_storage_account_access_key" {
  description = "Map of storage_account_access_key values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.storage_account_access_key if v.storage_account_access_key != null && length(v.storage_account_access_key) > 0 }
  sensitive   = true
}
output "mssql_server_extended_auditing_policies_storage_account_access_key_is_secondary" {
  description = "Map of storage_account_access_key_is_secondary values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.storage_account_access_key_is_secondary if v.storage_account_access_key_is_secondary != null }
}
output "mssql_server_extended_auditing_policies_storage_account_subscription_id" {
  description = "Map of storage_account_subscription_id values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.storage_account_subscription_id if v.storage_account_subscription_id != null && length(v.storage_account_subscription_id) > 0 }
  sensitive   = true
}
output "mssql_server_extended_auditing_policies_storage_endpoint" {
  description = "Map of storage_endpoint values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.storage_endpoint if v.storage_endpoint != null && length(v.storage_endpoint) > 0 }
}


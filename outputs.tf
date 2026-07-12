output "mssql_server_extended_auditing_policies_id" {
  description = "Map of id values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.id }
}
output "mssql_server_extended_auditing_policies_audit_actions_and_groups" {
  description = "Map of audit_actions_and_groups values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.audit_actions_and_groups }
}
output "mssql_server_extended_auditing_policies_enabled" {
  description = "Map of enabled values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.enabled }
}
output "mssql_server_extended_auditing_policies_log_monitoring_enabled" {
  description = "Map of log_monitoring_enabled values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.log_monitoring_enabled }
}
output "mssql_server_extended_auditing_policies_predicate_expression" {
  description = "Map of predicate_expression values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.predicate_expression }
}
output "mssql_server_extended_auditing_policies_retention_in_days" {
  description = "Map of retention_in_days values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.retention_in_days }
}
output "mssql_server_extended_auditing_policies_server_id" {
  description = "Map of server_id values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.server_id }
}
output "mssql_server_extended_auditing_policies_storage_account_access_key" {
  description = "Map of storage_account_access_key values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.storage_account_access_key }
  sensitive   = true
}
output "mssql_server_extended_auditing_policies_storage_account_access_key_is_secondary" {
  description = "Map of storage_account_access_key_is_secondary values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.storage_account_access_key_is_secondary }
}
output "mssql_server_extended_auditing_policies_storage_account_subscription_id" {
  description = "Map of storage_account_subscription_id values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.storage_account_subscription_id }
  sensitive   = true
}
output "mssql_server_extended_auditing_policies_storage_endpoint" {
  description = "Map of storage_endpoint values across all mssql_server_extended_auditing_policies, keyed the same as var.mssql_server_extended_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : k => v.storage_endpoint }
}


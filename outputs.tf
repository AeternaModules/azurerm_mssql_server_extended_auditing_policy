output "mssql_server_extended_auditing_policies" {
  description = "All mssql_server_extended_auditing_policy resources"
  value       = azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies
  sensitive   = true
}
output "mssql_server_extended_auditing_policies_audit_actions_and_groups" {
  description = "List of audit_actions_and_groups values across all mssql_server_extended_auditing_policies"
  value       = [for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : v.audit_actions_and_groups]
}
output "mssql_server_extended_auditing_policies_enabled" {
  description = "List of enabled values across all mssql_server_extended_auditing_policies"
  value       = [for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : v.enabled]
}
output "mssql_server_extended_auditing_policies_log_monitoring_enabled" {
  description = "List of log_monitoring_enabled values across all mssql_server_extended_auditing_policies"
  value       = [for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : v.log_monitoring_enabled]
}
output "mssql_server_extended_auditing_policies_predicate_expression" {
  description = "List of predicate_expression values across all mssql_server_extended_auditing_policies"
  value       = [for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : v.predicate_expression]
}
output "mssql_server_extended_auditing_policies_retention_in_days" {
  description = "List of retention_in_days values across all mssql_server_extended_auditing_policies"
  value       = [for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : v.retention_in_days]
}
output "mssql_server_extended_auditing_policies_server_id" {
  description = "List of server_id values across all mssql_server_extended_auditing_policies"
  value       = [for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : v.server_id]
}
output "mssql_server_extended_auditing_policies_storage_account_access_key" {
  description = "List of storage_account_access_key values across all mssql_server_extended_auditing_policies"
  value       = [for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : v.storage_account_access_key]
  sensitive   = true
}
output "mssql_server_extended_auditing_policies_storage_account_access_key_is_secondary" {
  description = "List of storage_account_access_key_is_secondary values across all mssql_server_extended_auditing_policies"
  value       = [for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : v.storage_account_access_key_is_secondary]
}
output "mssql_server_extended_auditing_policies_storage_account_subscription_id" {
  description = "List of storage_account_subscription_id values across all mssql_server_extended_auditing_policies"
  value       = [for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : v.storage_account_subscription_id]
  sensitive   = true
}
output "mssql_server_extended_auditing_policies_storage_endpoint" {
  description = "List of storage_endpoint values across all mssql_server_extended_auditing_policies"
  value       = [for k, v in azurerm_mssql_server_extended_auditing_policy.mssql_server_extended_auditing_policies : v.storage_endpoint]
}


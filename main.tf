data "azurerm_key_vault_secret" "storage_account_access_key" {
  for_each     = { for k, v in var.mssql_server_extended_auditing_policies : k => v if v.storage_account_access_key_key_vault_id != null && v.storage_account_access_key_key_vault_secret_name != null }
  name         = each.value.storage_account_access_key_key_vault_secret_name
  key_vault_id = each.value.storage_account_access_key_key_vault_id
}
data "azurerm_key_vault_secret" "storage_account_subscription_id" {
  for_each     = { for k, v in var.mssql_server_extended_auditing_policies : k => v if v.storage_account_subscription_id_key_vault_id != null && v.storage_account_subscription_id_key_vault_secret_name != null }
  name         = each.value.storage_account_subscription_id_key_vault_secret_name
  key_vault_id = each.value.storage_account_subscription_id_key_vault_id
}
resource "azurerm_mssql_server_extended_auditing_policy" "mssql_server_extended_auditing_policies" {
  for_each = var.mssql_server_extended_auditing_policies

  server_id                               = each.value.server_id
  audit_actions_and_groups                = each.value.audit_actions_and_groups
  enabled                                 = each.value.enabled
  log_monitoring_enabled                  = each.value.log_monitoring_enabled
  predicate_expression                    = each.value.predicate_expression
  retention_in_days                       = each.value.retention_in_days
  storage_account_access_key              = each.value.storage_account_access_key != null ? each.value.storage_account_access_key : try(data.azurerm_key_vault_secret.storage_account_access_key[each.key].value, null)
  storage_account_access_key_is_secondary = each.value.storage_account_access_key_is_secondary
  storage_account_subscription_id         = each.value.storage_account_subscription_id != null ? each.value.storage_account_subscription_id : try(data.azurerm_key_vault_secret.storage_account_subscription_id[each.key].value, null)
  storage_endpoint                        = each.value.storage_endpoint
}


variable "mssql_server_extended_auditing_policies" {
  description = <<EOT
Map of mssql_server_extended_auditing_policies, attributes below
Required:
    - server_id
Optional:
    - audit_actions_and_groups
    - enabled
    - log_monitoring_enabled
    - predicate_expression
    - retention_in_days
    - storage_account_access_key
    - storage_account_access_key_key_vault_id (alternative to storage_account_access_key - read from Key Vault instead)
    - storage_account_access_key_key_vault_secret_name (alternative to storage_account_access_key - read from Key Vault instead)
    - storage_account_access_key_is_secondary
    - storage_account_subscription_id
    - storage_account_subscription_id_key_vault_id (alternative to storage_account_subscription_id - read from Key Vault instead)
    - storage_account_subscription_id_key_vault_secret_name (alternative to storage_account_subscription_id - read from Key Vault instead)
    - storage_endpoint
EOT

  type = map(object({
    server_id                                             = string
    audit_actions_and_groups                              = optional(list(string))
    enabled                                               = optional(bool)
    log_monitoring_enabled                                = optional(bool)
    predicate_expression                                  = optional(string)
    retention_in_days                                     = optional(number)
    storage_account_access_key                            = optional(string)
    storage_account_access_key_key_vault_id               = optional(string)
    storage_account_access_key_key_vault_secret_name      = optional(string)
    storage_account_access_key_is_secondary               = optional(bool)
    storage_account_subscription_id                       = optional(string)
    storage_account_subscription_id_key_vault_id          = optional(string)
    storage_account_subscription_id_key_vault_secret_name = optional(string)
    storage_endpoint                                      = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.mssql_server_extended_auditing_policies : (
        v.storage_account_access_key == null || (length(v.storage_account_access_key) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.mssql_server_extended_auditing_policies : (
        v.retention_in_days == null || (v.retention_in_days >= 0 && v.retention_in_days <= 3285)
      )
    ])
    error_message = "must be between 0 and 3285"
  }
  validation {
    condition = alltrue([
      for k, v in var.mssql_server_extended_auditing_policies : (
        v.storage_account_subscription_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.storage_account_subscription_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.mssql_server_extended_auditing_policies : (
        v.predicate_expression == null || (length(v.predicate_expression) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.mssql_server_extended_auditing_policies : (
        v.audit_actions_and_groups == null || (alltrue([for x in v.audit_actions_and_groups : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


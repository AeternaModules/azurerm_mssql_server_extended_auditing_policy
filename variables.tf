variable "mssql_server_extended_auditing_policys" {
  description = <<EOT
Map of mssql_server_extended_auditing_policys, attributes below
Required:
    - server_id
Optional:
    - audit_actions_and_groups
    - enabled
    - log_monitoring_enabled
    - predicate_expression
    - retention_in_days
    - storage_account_access_key
    - storage_account_access_key_is_secondary
    - storage_account_subscription_id
    - storage_endpoint
EOT

  type = map(object({
    server_id                               = string
    audit_actions_and_groups                = optional(list(string))
    enabled                                 = optional(bool, true)
    log_monitoring_enabled                  = optional(bool, true)
    predicate_expression                    = optional(string)
    retention_in_days                       = optional(number, 0)
    storage_account_access_key              = optional(string)
    storage_account_access_key_is_secondary = optional(bool, false)
    storage_account_subscription_id         = optional(string)
    storage_endpoint                        = optional(string)
  }))
}


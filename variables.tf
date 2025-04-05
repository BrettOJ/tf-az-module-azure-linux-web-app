// Required Top-Level Variables
variable "location" {
  description = "(Required) The Azure Region where the Linux Web App should exist. Changing this forces a new Linux Web App to be created."
  type        = string
}

variable "name" {
  description = "(Required) The name to be used for this Linux Web App. Changing this forces a new Linux Web App to be created."
  type        = string
}

variable "resource_group_name" {
  description = "(Required) The name of the Resource Group where the Linux Web App should exist. Changing this forces a new Linux Web App to be created."
  type        = string
}

variable "service_plan_id" {
  description = "(Required) The ID of the Service Plan in which this Linux App Service will be created."
  type        = string
}

// Optional Top-Level Variables
variable "app_settings" {
  description = "(Optional) A map of key-value pairs of App Settings."
  type        = map(string)
  default     = {}
}

variable "client_affinity_enabled" {
  description = "(Optional) Should Client Affinity be enabled?"
  type        = bool
  default     = false
}

variable "client_certificate_enabled" {
  description = "(Optional) Should Client Certificates be enabled?"
  type        = bool
  default     = false
}

variable "client_certificate_mode" {
  description = "(Optional) The Client Certificate mode. Possible values: Required, Optional, OptionalInteractiveUser. Defaults to Required."
  type        = string
  default     = "Required"
}

variable "client_certificate_exclusion_paths" {
  description = "(Optional) Paths to exclude when using client certificates, separated by ;"
  type        = string
  default     = ""
}

variable "connection_string" {
  description = "(Optional) One or more connection string blocks."
  type = list(object({
    name  = string
    type  = string
    value = string
  }))
  default = []
}

variable "enabled" {
  description = "(Optional) Should the Linux Web App be enabled? Defaults to true."
  type        = bool
  default     = true
}

variable "ftp_publish_basic_authentication_enabled" {
  description = "(Optional) Should the default FTP Basic Authentication publishing profile be enabled. Defaults to true."
  type        = bool
  default     = true
}

variable "https_only" {
  description = "(Optional) Should the Linux Web App require HTTPS connections. Defaults to false."
  type        = bool
  default     = false
}

variable "public_network_access_enabled" {
  description = "(Optional) Should public network access be enabled for the Web App. Defaults to true."
  type        = bool
  default     = true
}

variable "key_vault_reference_identity_id" {
  description = "(Optional) The User Assigned Identity ID used for accessing KeyVault secrets."
  type        = string
  default     = ""
}

variable "storage_account" {
  description = "(Optional) One or more storage_account blocks."
  type = list(object({
    access_key  = string
    account_name = string
    name         = string
    share_name   = string
    type         = string
    mount_path   = optional(string)
  }))
  default = []
}

variable "virtual_network_backup_restore_enabled" {
  description = "(Optional) Whether backup and restore operations over the linked virtual network are enabled. Defaults to false."
  type        = bool
  default     = false
}

variable "virtual_network_subnet_id" {
  description = "(Optional) The subnet id to be used for regional virtual network integration."
  type        = string
  default     = ""
}

variable "webdeploy_publish_basic_authentication_enabled" {
  description = "(Optional) Should the default WebDeploy Basic Authentication publishing credentials be enabled. Defaults to true."
  type        = bool
  default     = true
}

variable "zip_deploy_file" {
  description = "(Optional) The local path and filename of the Zip packaged application to deploy."
  type        = string
  default     = ""
}

variable "tags" {
  description = "(Optional) A mapping of tags which should be assigned to the Linux Web App."
  type        = map(string)
  default     = {}
}

// Example Nested Blocks

// -- Auto Heal Settings (with Action and Trigger)
variable "auto_heal_setting" {
  description = "(Optional) Auto heal settings block."
  type = object({
    action = optional(object({
      action_type                    = string
      minimum_process_execution_time = optional(string)
    }))
    trigger = optional(object({
      requests = optional(object({
        count    = number
        interval = string
      }))
      slow_request = optional(object({
        count      = number
        interval   = string
        time_taken = string
      }))
      slow_request_with_path = optional(list(object({
        count      = number
        interval   = string
        time_taken = string
        path       = optional(string)
      })))
      status_code = optional(list(object({
        count             = number
        interval          = string
        status_code_range = string
        path              = optional(string)
        sub_status        = optional(string)
        win32_status_code = optional(string)
      })))
    }))
  })
  default = null
}

// -- Active Directory Block (for auth_settings)
variable "auth_active_directory" {
  description = "(Optional) Active Directory block for authentication."
  type = object({
    client_id                  = string
    allowed_audiences          = optional(list(string))
    client_secret              = optional(string)
    client_secret_setting_name = optional(string)
  })
  default = null
}

// -- Auth Settings Block
variable "auth_settings" {
  description = "(Optional) Authentication settings for the Linux Web App."
  type = object({
    enabled                         = bool
    active_directory                = optional(object({
      client_id                  = string
      allowed_audiences          = optional(list(string))
      client_secret              = optional(string)
      client_secret_setting_name = optional(string)
    }))
    additional_login_parameters     = optional(map(string))
    allowed_external_redirect_urls  = optional(list(string))
    default_provider                = optional(string)
    facebook                        = optional(object({
      app_id                   = string
      app_secret               = optional(string)
      app_secret_setting_name  = optional(string)
      oauth_scopes             = optional(list(string))
    }))
    github                          = optional(object({
      client_id                  = string
      client_secret              = optional(string)
      client_secret_setting_name = optional(string)
      oauth_scopes             = optional(list(string))
    }))
    google                          = optional(object({
      client_id                  = string
      client_secret              = optional(string)
      client_secret_setting_name = optional(string)
      oauth_scopes             = optional(list(string))
    }))
    issuer                          = optional(string)
    microsoft                       = optional(object({
      client_id                  = string
      client_secret              = optional(string)
      client_secret_setting_name = optional(string)
      oauth_scopes             = optional(list(string))
    }))
    runtime_version                 = optional(string)
    token_refresh_extension_hours   = optional(number)
    token_store_enabled             = optional(bool)
    twitter                         = optional(object({
      consumer_key                  = string
      consumer_secret              = optional(string)
      consumer_secret_setting_name = optional(string)
    }))
    unauthenticated_client_action   = optional(string)
  })
  default = null
}

// -- Auth Settings V2 Block
variable "auth_settings_v2" {
  description = "(Optional) Authentication Settings V2 for the Linux Web App."
  type = object({
    auth_enabled                      = optional(bool)
    runtime_version                   = optional(string)
    config_file_path                  = optional(string)
    require_authentication            = optional(bool)
    unauthenticated_action            = optional(string)
    default_provider                  = optional(string)
    excluded_paths                    = optional(list(string))
    require_https                     = optional(bool)
    http_route_api_prefix             = optional(string)
    forward_proxy_convention          = optional(string)
    forward_proxy_custom_host_header_name = optional(string)
    forward_proxy_custom_scheme_header_name = optional(string)
    apple_v2                          = optional(object({
      client_id                  = string
      client_secret_setting_name = string
      login_scopes               = optional(list(string))
    }))
    active_directory_v2               = optional(object({
      client_id                      = string
      tenant_auth_endpoint           = string
      client_secret_setting_name     = optional(string)
      client_secret_certificate_thumbprint = optional(string)
      jwt_allowed_groups             = optional(list(string))
      jwt_allowed_client_applications= optional(list(string))
      www_authentication_disabled    = optional(bool)
      allowed_groups                 = optional(list(string))
      allowed_identities             = optional(list(string))
      allowed_applications           = optional(list(string))
      login_parameters               = optional(map(string))
      allowed_audiences              = optional(list(string))
    }))
    azure_static_web_app_v2           = optional(object({
      client_id                  = string
    }))
    custom_oidc_v2                    = optional(list(object({
      name                          = string
      client_id                     = string
      openid_configuration_endpoint = string
      name_claim_type               = optional(string)
      scopes                        = optional(list(string))
      client_credential_method      = optional(string)
      client_secret_setting_name    = string
      authorisation_endpoint        = optional(string)
      token_endpoint                = optional(string)
      issuer_endpoint               = optional(string)
      certification_uri             = optional(string)
    })))
    facebook_v2                       = optional(object({
      app_id                  = string
      app_secret_setting_name = string
      graph_api_version       = optional(string)
      login_scopes            = optional(list(string))
    }))
    github_v2                         = optional(object({
      client_id                  = string
      client_secret_setting_name = string
      login_scopes               = optional(list(string))
    }))
    google_v2                         = optional(object({
      client_id                  = string
      client_secret_setting_name = string
      allowed_audiences          = optional(list(string))
      login_scopes               = optional(list(string))
    }))
    microsoft_v2                      = optional(object({
      client_id                  = string
      client_secret_setting_name = string
      allowed_audiences          = optional(list(string))
      login_scopes               = optional(list(string))
    }))
    twitter_v2                        = optional(object({
      consumer_key                  = string
      consumer_secret_setting_name = string
    }))
    login = object({
      logout_endpoint              = optional(string)
      token_store_enabled          = optional(bool)
      token_refresh_extension_time = optional(number)
      token_store_path             = optional(string)
      token_store_sas_setting_name = optional(string)
      preserve_url_fragments_for_logins = optional(bool)
      allowed_external_redirect_urls = optional(list(string))
      cookie_expiration_convention = optional(string)
      cookie_expiration_time       = optional(string)
      validate_nonce             = optional(bool)
      nonce_expiration_time      = optional(string)
    })
  })
  default = null
}

// -- Site Config Block
variable "site_config" {
  description = "(Optional) Site configuration for the Linux Web App."
  type = object({
    always_on                           = optional(bool)
    api_definition_url                  = optional(string)
    api_management_api_id               = optional(string)
    app_command_line                    = optional(string)
    application_stack                   = optional(object({
      docker_image_name        = optional(string)
      docker_registry_url      = optional(string)
      docker_registry_username = optional(string)
      docker_registry_password = optional(string)
      dotnet_version           = optional(string)
      go_version               = optional(string)
      java_server              = optional(string)
      java_server_version      = optional(string)
      java_version             = optional(string)
      node_version             = optional(string)
      php_version              = optional(string)
      python_version           = optional(string)
      ruby_version             = optional(string)
    }))
    auto_heal_setting                   = optional(object({
      action = optional(object({
        action_type                    = string
        minimum_process_execution_time = optional(string)
      }))
      trigger = optional(object({
        requests = optional(object({
          count    = number
          interval = string
        }))
        slow_request = optional(object({
          count      = number
          interval   = string
          time_taken = string
        }))
        slow_request_with_path = optional(list(object({
          count      = number
          interval   = string
          time_taken = string
          path       = optional(string)
        })))
        status_code = optional(list(object({
          count             = number
          interval          = string
          status_code_range = string
          path              = optional(string)
          sub_status        = optional(string)
          win32_status_code = optional(string)
        })))
      }))
    }))
    container_registry_managed_identity_client_id = optional(string)
    container_registry_use_managed_identity         = optional(bool)
    cors = optional(object({
      allowed_origins     = optional(list(string))
      support_credentials = optional(bool)
    }))
    default_documents               = optional(list(string))
    ftps_state                      = optional(string)
    health_check_path               = optional(string)
    health_check_eviction_time_in_min = optional(number)
    http2_enabled                   = optional(bool)
    ip_restriction                  = optional(list(object({
      action                    = optional(string)
      headers                   = optional(object({
        x_azure_fdid       = optional(list(string))
        x_fd_health_probe  = optional(number)
        x_forwarded_for    = optional(list(string))
        x_forwarded_host   = optional(list(string))
      }))
      ip_address                = optional(string)
      name                      = optional(string)
      priority                  = optional(number)
      service_tag               = optional(string)
      virtual_network_subnet_id = optional(string)
      description               = optional(string)
    })))
    ip_restriction_default_action   = optional(string)
    load_balancing_mode             = optional(string)
    local_mysql_enabled             = optional(bool)
    managed_pipeline_mode           = optional(string)
    minimum_tls_version             = optional(string)
    remote_debugging_enabled        = optional(bool)
    remote_debugging_version        = optional(string)
    scm_ip_restriction              = optional(list(object({
      action                    = optional(string)
      headers                   = optional(object({
        x_azure_fdid       = optional(list(string))
        x_fd_health_probe  = optional(number)
        x_forwarded_for    = optional(list(string))
        x_forwarded_host   = optional(list(string))
      }))
      ip_address                = optional(string)
      name                      = optional(string)
      priority                  = optional(number)
      service_tag               = optional(string)
      virtual_network_subnet_id = optional(string)
      description               = optional(string)
    })))
    scm_ip_restriction_default_action = optional(string)
    scm_minimum_tls_version         = optional(string)
    scm_use_main_ip_restriction     = optional(bool)
    use_32_bit_worker               = optional(bool)
    vnet_route_all_enabled          = optional(bool)
    websockets_enabled              = optional(bool)
    worker_count                    = optional(number)
  })
  default = null
}

// -- Logs Block
variable "logs" {
  description = "(Optional) Logs configuration for the Linux Web App."
  type = object({
    application_logs = optional(object({
      azure_blob_storage = optional(object({
        level             = string
        retention_in_days = number
        sas_url           = string
      }))
      file_system_level = string
    }))
    detailed_error_messages = optional(bool)
    failed_request_tracing  = optional(bool)
    http_logs = optional(object({
      azure_blob_storage = optional(object({
        retention_in_days = optional(number)
        sas_url           = string
      }))
      file_system = optional(object({
        retention_in_days = number
        retention_in_mb   = number
      }))
    }))
  })
  default = null
}

// -- Identity Block
variable "identity" {
  description = "(Optional) Managed Service Identity configuration for the Linux Web App."
  type = object({
    type         = string
    identity_ids = optional(list(string))
  })
  default = null
}

// -- Sticky Settings Block
variable "sticky_settings" {
  description = "(Optional) Sticky settings for the Linux Web App."
  type = object({
    app_setting_names       = optional(list(string))
    connection_string_names = optional(list(string))
  })
  default = null
}

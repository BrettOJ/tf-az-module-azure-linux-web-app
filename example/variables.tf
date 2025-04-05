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


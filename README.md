# tf-az-module-azure-linux-web-app
Terraform module to create an Azure Linux Web App



---
created: 2025-04-06T10:29:52 (UTC +08:00)
tags: []
source: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app
author: 
---

# azurerm_linux_web_app | Resources | hashicorp/azurerm | Terraform | Terraform Registry

> ## Excerpt
> Manages a Linux Web App.

---
Manages a Linux Web App.

## [Example Usage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#example-usage)

```hcl
provider "azurerm" { features {} } resource "azurerm_resource_group" "example" { name = "example-resources" location = "West Europe" } resource "azurerm_service_plan" "example" { name = "example" resource_group_name = azurerm_resource_group.example.name location = azurerm_resource_group.example.location os_type = "Linux" sku_name = "P1v2" } resource "azurerm_linux_web_app" "example" { name = "example" resource_group_name = azurerm_resource_group.example.name location = azurerm_service_plan.example.location service_plan_id = azurerm_service_plan.example.id site_config {} }
```

## [Argument Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#argument-reference)

The following arguments are supported:

-   [`location`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#location-3) - (Required) The Azure Region where the Linux Web App should exist. Changing this forces a new Linux Web App to be created.
    
-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#name-10) - (Required) The name which should be used for this Linux Web App. Changing this forces a new Linux Web App to be created.
    

-   [`resource_group_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#resource_group_name-3) - (Required) The name of the Resource Group where the Linux Web App should exist. Changing this forces a new Linux Web App to be created.
    
-   [`service_plan_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#service_plan_id-2) - (Required) The ID of the Service Plan that this Linux App Service will be created in.
    
-   [`site_config`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#site_config-2) - (Required) A `site_config` block as defined below.
    

___

-   [`app_settings`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#app_settings-2) - (Optional) A map of key-value pairs of App Settings.
    
-   [`auth_settings`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#auth_settings-2) - (Optional) A `auth_settings` block as defined below.
    
-   [`auth_settings_v2`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#auth_settings_v2-2) - (Optional) An `auth_settings_v2` block as defined below.
    
-   [`backup`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#backup-2) - (Optional) A `backup` block as defined below.
    
-   [`client_affinity_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_affinity_enabled-2) - (Optional) Should Client Affinity be enabled?
    
-   [`client_certificate_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_certificate_enabled-2) - (Optional) Should Client Certificates be enabled?
    
-   [`client_certificate_mode`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_certificate_mode-2) - (Optional) The Client Certificate mode. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. This property has no effect when `client_certificate_enabled` is `false`. Defaults to `Required`.
    
-   [`client_certificate_exclusion_paths`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_certificate_exclusion_paths-2) - (Optional) Paths to exclude when using client certificates, separated by ;
    
-   [`connection_string`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#connection_string-2) - (Optional) One or more `connection_string` blocks as defined below.
    
-   [`enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#enabled-4) - (Optional) Should the Linux Web App be enabled? Defaults to `true`.
    
-   [`ftp_publish_basic_authentication_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#ftp_publish_basic_authentication_enabled-2) - (Optional) Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
    
-   [`https_only`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#https_only-2) - (Optional) Should the Linux Web App require HTTPS connections. Defaults to `false`.
    
-   [`public_network_access_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#public_network_access_enabled-2) - (Optional) Should public network access be enabled for the Web App. Defaults to `true`.
    
-   [`identity`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#identity-3) - (Optional) An `identity` block as defined below.
    
-   [`key_vault_reference_identity_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#key_vault_reference_identity_id-2) - (Optional) The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity).
    
-   [`logs`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#logs-2) - (Optional) A `logs` block as defined below.
    
-   [`storage_account`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#storage_account-2) - (Optional) One or more `storage_account` blocks as defined below.
    
-   [`sticky_settings`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#sticky_settings-2) - (Optional) A `sticky_settings` block as defined below.
    
-   [`virtual_network_backup_restore_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#virtual_network_backup_restore_enabled-2) - (Optional) Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
    
-   [`virtual_network_subnet_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#virtual_network_subnet_id-4) - (Optional) The subnet id which will be used by this Web App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
    

-   [`webdeploy_publish_basic_authentication_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#webdeploy_publish_basic_authentication_enabled-2) - (Optional) Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.

-   [`zip_deploy_file`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#zip_deploy_file-2) - (Optional) The local path and filename of the Zip packaged application to deploy to this Linux Web App.

-   [`tags`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#tags-3) - (Optional) A mapping of tags which should be assigned to the Linux Web App.

___

An `action` block supports the following:

-   [`action_type`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#action_type-2) - (Required) Predefined action to be taken to an Auto Heal trigger. Possible values include: `Recycle`.
    
-   [`minimum_process_execution_time`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#minimum_process_execution_time-2) - (Optional) The minimum amount of time in `hh:mm:ss` the Linux Web App must have been running before the defined action will be run in the event of a trigger.
    

___

An `active_directory` block supports the following:

-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_id-13) - (Required) The ID of the Client to use to authenticate with Azure Active Directory.
    
-   [`allowed_audiences`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#allowed_audiences-5) - (Optional) Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
    

-   [`client_secret`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_secret-6) - (Optional) The Client Secret for the Client ID. Cannot be used with `client_secret_setting_name`.
    
-   [`client_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_secret_setting_name-11) - (Optional) The App Setting name that contains the client secret of the Client. Cannot be used with `client_secret`.
    

___

An `application_logs` block supports the following:

-   [`azure_blob_storage`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#azure_blob_storage-3) - (Optional) An `azure_blob_storage` block as defined below.
    
-   [`file_system_level`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#file_system_level-2) - (Required) Log level. Possible values include: `Off`, `Verbose`, `Information`, `Warning`, and `Error`.
    

___

An `application_stack` block supports the following:

-   [`docker_image_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#docker_image_name-2) - (Optional) The docker image, including tag, to be used. e.g. `appsvc/staticsite:latest`.
    
-   [`docker_registry_url`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#docker_registry_url-2) - (Optional) The URL of the container registry where the `docker_image_name` is located. e.g. `https://index.docker.io` or `https://mcr.microsoft.com`. This value is required with `docker_image_name`.
    
-   [`docker_registry_username`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#docker_registry_username-2) - (Optional) The User Name to use for authentication against the registry to pull the image.
    
-   [`docker_registry_password`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#docker_registry_password-2) - (Optional) The User Name to use for authentication against the registry to pull the image.
    

-   [`dotnet_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#dotnet_version-2) - (Optional) The version of .NET to use. Possible values include `3.1`, `5.0`, `6.0`, `7.0`, `8.0` and `9.0`.
    
-   [`go_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#go_version-2) - (Optional) The version of Go to use. Possible values include `1.18`, and `1.19`.
    
-   [`java_server`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#java_server-2) - (Optional) The Java server type. Possible values include `JAVA`, `TOMCAT`, and `JBOSSEAP`.
    

-   [`java_server_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#java_server_version-2) - (Optional) The Version of the `java_server` to use.
    
-   [`java_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#java_version-2) - (Optional) The Version of Java to use. Possible values include `8`, `11`, `17`, and `21`.
    

-   [`node_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#node_version-2) - (Optional) The version of Node to run. Possible values include `12-lts`, `14-lts`, `16-lts`, `18-lts`, `20-lts` and `22-lts`. This property conflicts with `java_version`.

-   [`php_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#php_version-2) - (Optional) The version of PHP to run. Possible values are `7.4`, `8.0`, `8.1`, `8.2` and `8.3`.

-   [`python_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#python_version-2) - (Optional) The version of Python to run. Possible values include `3.13`, `3.12`, `3.11`, `3.10`, `3.9`, `3.8` and `3.7`.
    
-   [`ruby_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#ruby_version-2) - (Optional) The version of Ruby to run. Possible values include `2.6` and `2.7`.
    

___

An `auth_settings` block supports the following:

-   [`enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#enabled-5) - (Required) Should the Authentication / Authorization feature be enabled for the Linux Web App?
    
-   [`active_directory`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#active_directory-2) - (Optional) An `active_directory` block as defined above.
    
-   [`additional_login_parameters`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#additional_login_parameters-2) - (Optional) Specifies a map of login Parameters to send to the OpenID Connect authorization endpoint when a user logs in.
    
-   [`allowed_external_redirect_urls`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#allowed_external_redirect_urls-3) - (Optional) Specifies a list of External URLs that can be redirected to as part of logging in or logging out of the Linux Web App.
    
-   [`default_provider`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#default_provider-3) - (Optional) The default authentication provider to use when multiple providers are configured. Possible values include: `BuiltInAuthenticationProviderAzureActiveDirectory`, `BuiltInAuthenticationProviderFacebook`, `BuiltInAuthenticationProviderGoogle`, `BuiltInAuthenticationProviderMicrosoftAccount`, `BuiltInAuthenticationProviderTwitter`, `BuiltInAuthenticationProviderGithub`
    

-   [`facebook`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#facebook-2) - (Optional) A `facebook` block as defined below.
    
-   [`github`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#github-2) - (Optional) A `github` block as defined below.
    
-   [`google`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#google-2) - (Optional) A `google` block as defined below.
    
-   [`issuer`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#issuer-2) - (Optional) The OpenID Connect Issuer URI that represents the entity that issues access tokens for this Linux Web App.
    

-   [`microsoft`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#microsoft-2) - (Optional) A `microsoft` block as defined below.
    
-   [`runtime_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#runtime_version-3) - (Optional) The RuntimeVersion of the Authentication / Authorization feature in use for the Linux Web App.
    
-   [`token_refresh_extension_hours`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#token_refresh_extension_hours-2) - (Optional) The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72` hours.
    
-   [`token_store_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#token_store_enabled-3) - (Optional) Should the Linux Web App durably store platform-specific security tokens that are obtained during login flows? Defaults to `false`.
    
-   [`twitter`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#twitter-2) - (Optional) A `twitter` block as defined below.
    
-   [`unauthenticated_client_action`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#unauthenticated_client_action-2) - (Optional) The action to take when an unauthenticated client attempts to access the app. Possible values include: `RedirectToLoginPage`, `AllowAnonymous`.
    

___

An `auth_settings_v2` block supports the following:

-   [`auth_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#auth_enabled-2) - (Optional) Should the AuthV2 Settings be enabled. Defaults to `false`.
    
-   [`runtime_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#runtime_version-4) - (Optional) The Runtime Version of the Authentication and Authorisation feature of this App. Defaults to `~1`.
    
-   [`config_file_path`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#config_file_path-2) - (Optional) The path to the App Auth settings.
    

-   [`require_authentication`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#require_authentication-2) - (Optional) Should the authentication flow be used for all requests.
    
-   [`unauthenticated_action`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#unauthenticated_action-2) - (Optional) The action to take for requests made without authentication. Possible values include `RedirectToLoginPage`, `AllowAnonymous`, `Return401`, and `Return403`. Defaults to `RedirectToLoginPage`.
    
-   [`default_provider`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#default_provider-4) - (Optional) The Default Authentication Provider to use when the `unauthenticated_action` is set to `RedirectToLoginPage`. Possible values include: `apple`, `azureactivedirectory`, `facebook`, `github`, `google`, `twitter` and the `name` of your `custom_oidc_v2` provider.
    

-   [`excluded_paths`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#excluded_paths-2) - (Optional) The paths which should be excluded from the `unauthenticated_action` when it is set to `RedirectToLoginPage`.

-   [`require_https`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#require_https-2) - (Optional) Should HTTPS be required on connections? Defaults to `true`.
    
-   [`http_route_api_prefix`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#http_route_api_prefix-2) - (Optional) The prefix that should precede all the authentication and authorisation paths. Defaults to `/.auth`.
    
-   [`forward_proxy_convention`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#forward_proxy_convention-2) - (Optional) The convention used to determine the url of the request made. Possible values include `NoProxy`, `Standard`, `Custom`. Defaults to `NoProxy`.
    
-   [`forward_proxy_custom_host_header_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#forward_proxy_custom_host_header_name-2) - (Optional) The name of the custom header containing the host of the request.
    
-   [`forward_proxy_custom_scheme_header_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#forward_proxy_custom_scheme_header_name-2) - (Optional) The name of the custom header containing the scheme of the request.
    
-   [`apple_v2`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#apple_v2-2) - (Optional) An `apple_v2` block as defined below.
    
-   [`active_directory_v2`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#active_directory_v2-2) - (Optional) An `active_directory_v2` block as defined below.
    
-   [`azure_static_web_app_v2`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#azure_static_web_app_v2-2) - (Optional) An `azure_static_web_app_v2` block as defined below.
    
-   [`custom_oidc_v2`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#custom_oidc_v2-2) - (Optional) Zero or more `custom_oidc_v2` blocks as defined below.
    
-   [`facebook_v2`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#facebook_v2-2) - (Optional) A `facebook_v2` block as defined below.
    
-   [`github_v2`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#github_v2-2) - (Optional) A `github_v2` block as defined below.
    
-   [`google_v2`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#google_v2-2) - (Optional) A `google_v2` block as defined below.
    
-   [`microsoft_v2`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#microsoft_v2-2) - (Optional) A `microsoft_v2` block as defined below.
    
-   [`twitter_v2`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#twitter_v2-2) - (Optional) A `twitter_v2` block as defined below.
    
-   [`login`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#login-2) - (Required) A `login` block as defined below.
    

___

An `apple_v2` block supports the following:

-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_id-14) - (Required) The OpenID Connect Client ID for the Apple web application.
    
-   [`client_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_secret_setting_name-12) - (Required) The app setting name that contains the `client_secret` value used for Apple Login.
    

-   [`login_scopes`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#login_scopes-6) - A list of Login Scopes provided by this Authentication Provider.

___

An `active_directory_v2` block supports the following:

-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_id-15) - (Required) The ID of the Client to use to authenticate with Azure Active Directory.
    
-   [`tenant_auth_endpoint`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#tenant_auth_endpoint-2) - (Required) The Azure Tenant Endpoint for the Authenticating Tenant. e.g. `https://login.microsoftonline.com/{tenant-guid}/v2.0/`
    

-   [`client_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_secret_setting_name-13) - (Optional) The App Setting name that contains the client secret of the Client.

-   [`client_secret_certificate_thumbprint`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_secret_certificate_thumbprint-2) - (Optional) The thumbprint of the certificate used for signing purposes.

-   [`jwt_allowed_groups`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#jwt_allowed_groups-2) - (Optional) A list of Allowed Groups in the JWT Claim.
    
-   [`jwt_allowed_client_applications`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#jwt_allowed_client_applications-2) - (Optional) A list of Allowed Client Applications in the JWT Claim.
    
-   [`www_authentication_disabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#www_authentication_disabled-2) - (Optional) Should the www-authenticate provider should be omitted from the request? Defaults to `false`.
    
-   [`allowed_groups`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#allowed_groups-2) - (Optional) The list of allowed Group Names for the Default Authorisation Policy.
    
-   [`allowed_identities`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#allowed_identities-2) - (Optional) The list of allowed Identities for the Default Authorisation Policy.
    
-   [`allowed_applications`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#allowed_applications-2) - (Optional) The list of allowed Applications for the Default Authorisation Policy.
    
-   [`login_parameters`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#login_parameters-2) - (Optional) A map of key-value pairs to send to the Authorisation Endpoint when a user logs in.
    
-   [`allowed_audiences`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#allowed_audiences-6) - (Optional) Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
    

___

An `azure_static_web_app_v2` block supports the following:

-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_id-16) - (Required) The ID of the Client to use to authenticate with Azure Static Web App Authentication.

___

A `custom_oidc_v2` block supports the following:

-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#name-11) - (Required) The name of the Custom OIDC Authentication Provider.

-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_id-17) - (Required) The ID of the Client to use to authenticate with the Custom OIDC.
    
-   [`openid_configuration_endpoint`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#openid_configuration_endpoint-2) - (Required) Specifies the endpoint used for OpenID Connect Discovery. For example `https://example.com/.well-known/openid-configuration`.
    
-   [`name_claim_type`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#name_claim_type-2) - (Optional) The name of the claim that contains the users name.
    
-   [`scopes`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#scopes-2) - (Optional) The list of the scopes that should be requested while authenticating.
    
-   [`client_credential_method`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_credential_method-2) - The Client Credential Method used.
    
-   [`client_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_secret_setting_name-14) - The App Setting name that contains the secret for this Custom OIDC Client. This is generated from `name` above and suffixed with `_PROVIDER_AUTHENTICATION_SECRET`.
    
-   [`authorisation_endpoint`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#authorisation_endpoint-2) - The endpoint to make the Authorisation Request as supplied by `openid_configuration_endpoint` response.
    
-   [`token_endpoint`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#token_endpoint-2) - The endpoint used to request a Token as supplied by `openid_configuration_endpoint` response.
    
-   [`issuer_endpoint`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#issuer_endpoint-2) - The endpoint that issued the Token as supplied by `openid_configuration_endpoint` response.
    
-   [`certification_uri`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#certification_uri-2) - The endpoint that provides the keys necessary to validate the token as supplied by `openid_configuration_endpoint` response.
    

___

A `facebook_v2` block supports the following:

-   [`app_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#app_id-3) - (Required) The App ID of the Facebook app used for login.
    
-   [`app_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#app_secret_setting_name-3) - (Required) The app setting name that contains the `app_secret` value used for Facebook Login.
    

-   [`graph_api_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#graph_api_version-2) - (Optional) The version of the Facebook API to be used while logging in.
    
-   [`login_scopes`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#login_scopes-7) - (Optional) The list of scopes that should be requested as part of Facebook Login authentication.
    

___

A `github_v2` block supports the following:

-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_id-18) - (Required) The ID of the GitHub app used for login..
    
-   [`client_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_secret_setting_name-15) - (Required) The app setting name that contains the `client_secret` value used for GitHub Login.
    

-   [`login_scopes`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#login_scopes-8) - (Optional) The list of OAuth 2.0 scopes that should be requested as part of GitHub Login authentication.

___

A `google_v2` block supports the following:

-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_id-19) - (Required) The OpenID Connect Client ID for the Google web application.
    
-   [`client_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_secret_setting_name-16) - (Required) The app setting name that contains the `client_secret` value used for Google Login.
    

-   [`allowed_audiences`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#allowed_audiences-7) - (Optional) Specifies a list of Allowed Audiences that should be requested as part of Google Sign-In authentication.
    
-   [`login_scopes`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#login_scopes-9) - (Optional) The list of OAuth 2.0 scopes that should be requested as part of Google Sign-In authentication.
    

___

A `microsoft_v2` block supports the following:

-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_id-20) - (Required) The OAuth 2.0 client ID that was created for the app used for authentication.
    
-   [`client_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_secret_setting_name-17) - (Required) The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
    

-   [`allowed_audiences`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#allowed_audiences-8) - (Optional) Specifies a list of Allowed Audiences that will be requested as part of Microsoft Sign-In authentication.
    
-   [`login_scopes`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#login_scopes-10) - (Optional) The list of Login scopes that should be requested as part of Microsoft Account authentication.
    

___

A `twitter_v2` block supports the following:

-   [`consumer_key`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#consumer_key-3) - (Required) The OAuth 1.0a consumer key of the Twitter application used for sign-in.
    
-   [`consumer_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#consumer_secret_setting_name-3) - (Required) The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in.
    

___

A `login` block supports the following:

-   [`logout_endpoint`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#logout_endpoint-2) - (Optional) The endpoint to which logout requests should be made.
    
-   [`token_store_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#token_store_enabled-4) - (Optional) Should the Token Store configuration Enabled. Defaults to `false`
    
-   [`token_refresh_extension_time`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#token_refresh_extension_time-2) - (Optional) The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72` hours.
    
-   [`token_store_path`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#token_store_path-2) - (Optional) The directory path in the App Filesystem in which the tokens will be stored.
    
-   [`token_store_sas_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#token_store_sas_setting_name-2) - (Optional) The name of the app setting which contains the SAS URL of the blob storage containing the tokens.
    
-   [`preserve_url_fragments_for_logins`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#preserve_url_fragments_for_logins-2) - (Optional) Should the fragments from the request be preserved after the login request is made. Defaults to `false`.
    
-   [`allowed_external_redirect_urls`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#allowed_external_redirect_urls-4) - (Optional) External URLs that can be redirected to as part of logging in or logging out of the app. This is an advanced setting typically only needed by Windows Store application backends.
    

-   [`cookie_expiration_convention`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#cookie_expiration_convention-2) - (Optional) The method by which cookies expire. Possible values include: `FixedTime`, and `IdentityProviderDerived`. Defaults to `FixedTime`.
    
-   [`cookie_expiration_time`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#cookie_expiration_time-2) - (Optional) The time after the request is made when the session cookie should expire. Defaults to `08:00:00`.
    
-   [`validate_nonce`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#validate_nonce-2) - (Optional) Should the nonce be validated while completing the login flow. Defaults to `true`.
    
-   [`nonce_expiration_time`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#nonce_expiration_time-2) - (Optional) The time after the request is made when the nonce should expire. Defaults to `00:05:00`.
    

___

An `auto_heal_setting` block supports the following:

-   [`action`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#action-4) - (Optional) A `action` block as defined above.
    
-   [`trigger`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#trigger-2) - (Optional) A `trigger` block as defined below.
    

___

An `azure_blob_storage` block supports the following:

-   [`level`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#level-2) - (Required) The level at which to log. Possible values include `Error`, `Warning`, `Information`, `Verbose` and `Off`. **NOTE:** this field is not available for `http_logs`
    
-   [`retention_in_days`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#retention_in_days-4) - (Required) The time in days after which to remove blobs. A value of `0` means no retention.
    
-   [`sas_url`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#sas_url-3) - (Required) SAS url to an Azure blob container with read/write/list/delete permissions.
    

___

A `backup` block supports the following:

-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#name-12) - (Required) The name which should be used for this Backup.
    
-   [`schedule`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#schedule-2) - (Required) A `schedule` block as defined below.
    
-   [`storage_account_url`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#storage_account_url-2) - (Required) The SAS URL to the container.
    
-   [`enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#enabled-6) - (Optional) Should this backup job be enabled? Defaults to `true`.
    

___

A `connection_string` block supports the following:

-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#name-13) - (Required) The name of the Connection String.
    
-   [`type`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#type-4) - (Required) Type of database. Possible values include: `MySQL`, `SQLServer`, `SQLAzure`, `Custom`, `NotificationHub`, `ServiceBus`, `EventHub`, `APIHub`, `DocDb`, `RedisCache`, and `PostgreSQL`.
    
-   [`value`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#value-2) - (Required) The connection string value.
    

___

A `cors` block supports the following:

-   [`allowed_origins`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#allowed_origins-2) - (Optional) Specifies a list of origins that should be allowed to make cross-origin calls.
    
-   [`support_credentials`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#support_credentials-2) - (Optional) Whether CORS requests with credentials are allowed. Defaults to `false`
    

___

A `facebook` block supports the following:

-   [`app_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#app_id-4) - (Required) The App ID of the Facebook app used for login.
    
-   [`app_secret`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#app_secret-2) - (Optional) The App Secret of the Facebook app used for Facebook login. Cannot be specified with `app_secret_setting_name`.
    
-   [`app_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#app_secret_setting_name-4) - (Optional) The app setting name that contains the `app_secret` value used for Facebook login. Cannot be specified with `app_secret`.
    
-   [`oauth_scopes`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#oauth_scopes-5) - (Optional) Specifies a list of OAuth 2.0 scopes to be requested as part of Facebook login authentication.
    

___

A `file_system` block supports the following:

-   [`retention_in_days`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#retention_in_days-5) - (Required) The retention period in days. A value of `0` means no retention.
    
-   [`retention_in_mb`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#retention_in_mb-2) - (Required) The maximum size in megabytes that log files can use.
    

___

A `github` block supports the following:

-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_id-21) - (Required) The ID of the GitHub app used for login.
    
-   [`client_secret`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_secret-7) - (Optional) The Client Secret of the GitHub app used for GitHub login. Cannot be specified with `client_secret_setting_name`.
    
-   [`client_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_secret_setting_name-18) - (Optional) The app setting name that contains the `client_secret` value used for GitHub login. Cannot be specified with `client_secret`.
    
-   [`oauth_scopes`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#oauth_scopes-6) - (Optional) Specifies a list of OAuth 2.0 scopes that will be requested as part of GitHub login authentication.
    

___

A `google` block supports the following:

-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_id-22) - (Required) The OpenID Connect Client ID for the Google web application.
    
-   [`client_secret`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_secret-8) - (Optional) The client secret associated with the Google web application. Cannot be specified with `client_secret_setting_name`.
    
-   [`client_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_secret_setting_name-19) - (Optional) The app setting name that contains the `client_secret` value used for Google login. Cannot be specified with `client_secret`.
    
-   [`oauth_scopes`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#oauth_scopes-7) - (Optional) Specifies a list of OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. If not specified, `openid`, `profile`, and `email` are used as default scopes.
    

___

A `headers` block supports the following:

-   [`x_azure_fdid`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#x_azure_fdid-2) - (Optional) Specifies a list of Azure Front Door IDs.
    
-   [`x_fd_health_probe`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#x_fd_health_probe-2) - (Optional) Specifies if a Front Door Health Probe should be expected. The only possible value is `1`.
    
-   [`x_forwarded_for`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#x_forwarded_for-2) - (Optional) Specifies a list of addresses for which matching should be applied. Omitting this value means allow any.
    
-   [`x_forwarded_host`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#x_forwarded_host-2) - (Optional) Specifies a list of Hosts for which matching should be applied.
    

___

A `http_logs` block supports the following:

-   [`azure_blob_storage`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#azure_blob_storage-4) - (Optional) A `azure_blob_storage_http` block as defined above.
    
-   [`file_system`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#file_system-2) - (Optional) A `file_system` block as defined above.
    

___

An `azure_blob_storage_http` block supports the following:

-   [`retention_in_days`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#retention_in_days-6) - (Optional) The time in days after which to remove blobs. A value of `0` means no retention.
    
-   [`sas_url`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#sas_url-4) - (Required) SAS url to an Azure blob container with read/write/list/delete permissions.
    

___

An `identity` block supports the following:

-   [`type`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#type-5) - (Required) Specifies the type of Managed Service Identity that should be configured on this Linux Web App. Possible values are `SystemAssigned`, `UserAssigned`, and `SystemAssigned, UserAssigned` (to enable both).
    
-   [`identity_ids`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#identity_ids-2) - (Optional) A list of User Assigned Managed Identity IDs to be assigned to this Linux Web App.
    

___

An `ip_restriction` block supports the following:

-   [`action`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#action-5) - (Optional) The action to take. Possible values are `Allow` or `Deny`. Defaults to `Allow`.
    
-   [`headers`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#headers-3) - (Optional) A `headers` block as defined above.
    
-   [`ip_address`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#ip_address-3) - (Optional) The CIDR notation of the IP or IP Range to match. For example: `10.0.0.0/24` or `192.168.10.1/32`
    
-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#name-14) - (Optional) The name which should be used for this `ip_restriction`.
    
-   [`priority`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#priority-3) - (Optional) The priority value of this `ip_restriction`. Defaults to `65000`.
    
-   [`service_tag`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#service_tag-3) - (Optional) The Service Tag used for this IP Restriction.
    
-   [`virtual_network_subnet_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#virtual_network_subnet_id-5) - (Optional) The Virtual Network Subnet ID used for this IP Restriction.
    

-   [`description`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#description-3) - (Optional) The Description of this IP Restriction.

___

A `logs` block supports the following:

-   [`application_logs`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#application_logs-2) - (Optional) A `application_logs` block as defined above.
    
-   [`detailed_error_messages`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#detailed_error_messages-2) - (Optional) Should detailed error messages be enabled?
    
-   [`failed_request_tracing`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#failed_request_tracing-2) - (Optional) Should the failed request tracing be enabled?
    
-   [`http_logs`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#http_logs-2) - (Optional) An `http_logs` block as defined above.
    

___

A `microsoft` block supports the following:

-   [`client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_id-23) - (Required) The OAuth 2.0 client ID that was created for the app used for authentication.
    
-   [`client_secret`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_secret-9) - (Optional) The OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with `client_secret_setting_name`.
    
-   [`client_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#client_secret_setting_name-20) - (Optional) The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication. Cannot be specified with `client_secret`.
    
-   [`oauth_scopes`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#oauth_scopes-8) - (Optional) Specifies a list of OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication. If not specified, "wl.basic" is used as the default scope.
    

___

A `requests` block supports the following:

-   [`count`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#count-5) - (Required) The number of requests in the specified `interval` to trigger this rule.
    
-   [`interval`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#interval-5) - (Required) The interval in `hh:mm:ss`.
    

___

A `schedule` block supports the following:

-   [`frequency_interval`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#frequency_interval-2) - (Required) How often the backup should be executed (e.g. for weekly backup, this should be set to `7` and `frequency_unit` should be set to `Day`).

-   [`frequency_unit`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#frequency_unit-2) - (Required) The unit of time for how often the backup should take place. Possible values include: `Day`, `Hour`
    
-   [`keep_at_least_one_backup`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#keep_at_least_one_backup-2) - (Optional) Should the service keep at least one backup, regardless of the age of backup? Defaults to `false`.
    
-   [`retention_period_days`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#retention_period_days-2) - (Optional) After how many days backups should be deleted. Defaults to `30`.
    
-   [`start_time`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#start_time-2) - (Optional) When the schedule should start working in RFC-3339 format.
    

___

A `scm_ip_restriction` block supports the following:

-   [`action`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#action-6) - (Optional) The action to take. Possible values are `Allow` or `Deny`. Defaults to `Allow`.
    
-   [`headers`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#headers-4) - (Optional) A `headers` block as defined above.
    
-   [`ip_address`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#ip_address-4) - (Optional) The CIDR notation of the IP or IP Range to match. For example: `10.0.0.0/24` or `192.168.10.1/32`
    
-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#name-15) - (Optional) The name which should be used for this `ip_restriction`.
    
-   [`priority`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#priority-4) - (Optional) The priority value of this `ip_restriction`. Defaults to `65000`.
    
-   [`service_tag`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#service_tag-4) - (Optional) The Service Tag used for this IP Restriction.
    
-   [`virtual_network_subnet_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#virtual_network_subnet_id-6) - (Optional) The Virtual Network Subnet ID used for this IP Restriction.
    

-   [`description`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#description-4) - (Optional) The Description of this IP Restriction.

___

A `site_config` block supports the following:

-   [`always_on`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#always_on-2) - (Optional) If this Linux Web App is Always On enabled. Defaults to `true`.

-   [`api_definition_url`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#api_definition_url-2) - (Optional) The URL to the API Definition for this Linux Web App.
    
-   [`api_management_api_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#api_management_api_id-2) - (Optional) The API Management API ID this Linux Web App is associated with.
    
-   [`app_command_line`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#app_command_line-2) - (Optional) The App command line to launch.
    
-   [`application_stack`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#application_stack-2) - (Optional) A `application_stack` block as defined above.
    
-   [`auto_heal_setting`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#auto_heal_setting-2) - (Optional) A `auto_heal_setting` block as defined above. Required with `auto_heal`.
    
-   [`container_registry_managed_identity_client_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#container_registry_managed_identity_client_id-2) - (Optional) The Client ID of the Managed Service Identity to use for connections to the Azure Container Registry.
    
-   [`container_registry_use_managed_identity`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#container_registry_use_managed_identity-2) - (Optional) Should connections for Azure Container Registry use Managed Identity.
    
-   [`cors`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#cors-2) - (Optional) A `cors` block as defined above.
    
-   [`default_documents`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#default_documents-2) - (Optional) Specifies a list of Default Documents for the Linux Web App.
    
-   [`ftps_state`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#ftps_state-2) - (Optional) The State of FTP / FTPS service. Possible values include `AllAllowed`, `FtpsOnly`, and `Disabled`. Defaults to `Disabled`.
    

-   [`health_check_path`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#health_check_path-2) - (Optional) The path to the Health Check.
    
-   [`health_check_eviction_time_in_min`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#health_check_eviction_time_in_min-2) - (Optional) The amount of time in minutes that a node can be unhealthy before being removed from the load balancer. Possible values are between `2` and `10`. Only valid in conjunction with `health_check_path`.
    
-   [`http2_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#http2_enabled-2) - (Optional) Should the HTTP2 be enabled?
    
-   [`ip_restriction`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#ip_restriction-2) - (Optional) One or more `ip_restriction` blocks as defined above.
    
-   [`ip_restriction_default_action`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#ip_restriction_default_action-2) - (Optional) The Default action for traffic that does not match any `ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
    
-   [`load_balancing_mode`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#load_balancing_mode-2) - (Optional) The Site load balancing. Possible values include: `WeightedRoundRobin`, `LeastRequests`, `LeastResponseTime`, `WeightedTotalTraffic`, `RequestHash`, `PerSiteRoundRobin`. Defaults to `LeastRequests` if omitted.
    
-   [`local_mysql_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#local_mysql_enabled-2) - (Optional) Use Local MySQL. Defaults to `false`.
    
-   [`managed_pipeline_mode`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#managed_pipeline_mode-2) - (Optional) Managed pipeline mode. Possible values include `Integrated`, and `Classic`. Defaults to `Integrated`.
    
-   [`minimum_tls_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#minimum_tls_version-2) - (Optional) The configures the minimum version of TLS required for SSL requests. Possible values include: `1.0`, `1.1`, `1.2` and `1.3`. Defaults to `1.2`.
    
-   [`remote_debugging_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#remote_debugging_enabled-2) - (Optional) Should Remote Debugging be enabled? Defaults to `false`.
    
-   [`remote_debugging_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#remote_debugging_version-2) - (Optional) The Remote Debugging Version. Currently only `VS2022` is supported.
    
-   [`scm_ip_restriction`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#scm_ip_restriction-2) - (Optional) One or more `scm_ip_restriction` blocks as defined above.
    
-   [`scm_ip_restriction_default_action`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#scm_ip_restriction_default_action-2) - (Optional) The Default action for traffic that does not match any `scm_ip_restriction` rule. possible values include `Allow` and `Deny`. Defaults to `Allow`.
    
-   [`scm_minimum_tls_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#scm_minimum_tls_version-2) - (Optional) The configures the minimum version of TLS required for SSL requests to the SCM site Possible values include: `1.0`, `1.1`, and `1.2`. Defaults to `1.2`.
    
-   [`scm_use_main_ip_restriction`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#scm_use_main_ip_restriction-2) - (Optional) Should the Linux Web App `ip_restriction` configuration be used for the SCM also.
    
-   [`use_32_bit_worker`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#use_32_bit_worker-2) - (Optional) Should the Linux Web App use a 32-bit worker? Defaults to `true`.
    
-   [`vnet_route_all_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#vnet_route_all_enabled-2) - (Optional) Should all outbound traffic have NAT Gateways, Network Security Groups and User Defined Routes applied? Defaults to `false`.
    
-   [`websockets_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#websockets_enabled-2) - (Optional) Should Web Sockets be enabled? Defaults to `false`.
    
-   [`worker_count`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#worker_count-2) - (Optional) The number of Workers for this Linux App Service.
    

___

A `slow_request` block supports the following:

-   [`count`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#count-6) - (Required) The number of Slow Requests in the time `interval` to trigger this rule.
    
-   [`interval`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#interval-6) - (Required) The time interval in the form `hh:mm:ss`.
    
-   [`time_taken`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#time_taken-3) - (Required) The threshold of time passed to qualify as a Slow Request in `hh:mm:ss`.
    

___

A `slow_request_with_path` block supports the following:

-   [`count`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#count-7) - (Required) The number of Slow Requests in the time `interval` to trigger this rule.
    
-   [`interval`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#interval-7) - (Required) The time interval in the form `hh:mm:ss`.
    
-   [`time_taken`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#time_taken-4) - (Required) The threshold of time passed to qualify as a Slow Request in `hh:mm:ss`.
    
-   [`path`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#path-3) - (Optional) The path for which this slow request rule applies.
    

___

A `status_code` block supports the following:

-   [`count`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#count-8) - (Required) The number of occurrences of the defined `status_code` in the specified `interval` on which to trigger this rule.
    
-   [`interval`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#interval-8) - (Required) The time interval in the form `hh:mm:ss`.
    
-   [`status_code_range`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#status_code_range-2) - (Required) The status code for this rule, accepts single status codes and status code ranges. e.g. `500` or `400-499`. Possible values are integers between `101` and `599`
    
-   [`path`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#path-4) - (Optional) The path to which this rule status code applies.
    
-   [`sub_status`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#sub_status-2) - (Optional) The Request Sub Status of the Status Code.
    
-   [`win32_status_code`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#win32_status_code-2) - (Optional) The Win32 Status Code of the Request.
    

___

A `sticky_settings` block supports the following:

-   [`app_setting_names`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#app_setting_names-2) - (Optional) A list of `app_setting` names that the Linux Web App will not swap between Slots when a swap operation is triggered.
    
-   [`connection_string_names`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#connection_string_names-2) - (Optional) A list of `connection_string` names that the Linux Web App will not swap between Slots when a swap operation is triggered.
    

___

A `storage_account` block supports the following:

-   [`access_key`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#access_key-2) - (Required) The Access key for the storage account.
    
-   [`account_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#account_name-2) - (Required) The Name of the Storage Account.
    
-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#name-16) - (Required) The name which should be used for this Storage Account.
    
-   [`share_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#share_name-2) - (Required) The Name of the File Share or Container Name for Blob storage.
    
-   [`type`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#type-6) - (Required) The Azure Storage Type. Possible values include `AzureFiles` and `AzureBlob`
    
-   [`mount_path`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#mount_path-2) - (Optional) The path at which to mount the storage share.
    

___

A `trigger` block supports the following:

-   [`requests`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#requests-2) - (Optional) A `requests` block as defined above.
    
-   [`slow_request`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#slow_request-2) - (Optional) A `slow_request` blocks as defined above.
    
-   [`slow_request_with_path`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#slow_request_with_path-2) - (Optional) One or more `slow_request_with_path` blocks as defined above.
    
-   [`status_code`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#status_code-2) - (Optional) One or more `status_code` blocks as defined above.
    

___

A `twitter` block supports the following:

-   [`consumer_key`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#consumer_key-4) - (Required) The OAuth 1.0a consumer key of the Twitter application used for sign-in.
    
-   [`consumer_secret`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#consumer_secret-2) - (Optional) The OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with `consumer_secret_setting_name`.
    
-   [`consumer_secret_setting_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#consumer_secret_setting_name-4) - (Optional) The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with `consumer_secret`.
    

## [Attributes Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#attributes-reference)

In addition to the Arguments listed above - the following Attributes are exported:

-   [`id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#id-3) - The ID of the Linux Web App.
    
-   [`custom_domain_verification_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#custom_domain_verification_id-2) - The identifier used by App Service to perform domain ownership verification via DNS TXT record.
    
-   [`hosting_environment_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#hosting_environment_id-2) - The ID of the App Service Environment used by App Service.
    
-   [`default_hostname`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#default_hostname-2) - The default hostname of the Linux Web App.
    
-   [`kind`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#kind-3) - The Kind value for this Linux Web App.
    
-   [`outbound_ip_address_list`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#outbound_ip_address_list-2) - A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12"]`
    
-   [`outbound_ip_addresses`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#outbound_ip_addresses-2) - A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`.
    
-   [`possible_outbound_ip_address_list`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#possible_outbound_ip_address_list-2) - A list of possible outbound ip address.
    
-   [`possible_outbound_ip_addresses`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#possible_outbound_ip_addresses-2) - A comma-separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
    
-   [`site_credential`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#site_credential-2) - A `site_credential` block as defined below.
    
-   [`identity`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#identity-4) - An `identity` block as defined below, which contains the Managed Service Identity information for this App Service.
    

___

An `identity` block exports the following:

-   [`principal_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#principal_id-2) - The Principal ID associated with this Managed Service Identity.
    
-   [`tenant_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#tenant_id-3) - The Tenant ID associated with this Managed Service Identity.
    

___

A `site_credential` block exports the following:

-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#name-17) - The Site Credentials Username used for publishing.
    
-   [`password`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#password-2) - The Site Credentials Password used for publishing.
    

## [Timeouts](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#timeouts)

The `timeouts` block allows you to specify [timeouts](https://www.terraform.io/language/resources/syntax#operation-timeouts) for certain actions:

-   [`create`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#create-3) - (Defaults to 30 minutes) Used when creating the Linux Web App.
-   [`read`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#read-3) - (Defaults to 5 minutes) Used when retrieving the Linux Web App.
-   [`update`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#update-3) - (Defaults to 30 minutes) Used when updating the Linux Web App.
-   [`delete`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#delete-3) - (Defaults to 30 minutes) Used when deleting the Linux Web App.

## [Import](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#import)

Linux Web Apps can be imported using the `resource id`, e.g.

```shell
terraform import azurerm_linux_web_app.example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Web/sites/site1
```

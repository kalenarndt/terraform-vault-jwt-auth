variable "role_name" {
  type        = string
  description = "(Required) Name of the Role that will be created for the JWT auth backend."
}

variable "token_policies" {
  type        = list(string)
  description = "(Required) List of roles to associate with the JWT Role"
  default     = []
}

variable "path" {
  type        = string
  description = "(Optional) Path where the JWT auth method will be mounted in Vault"
  default     = "jwt"
}

variable "type" {
  type        = string
  description = "(Optional) Type of the Auth backend that will be created (oidc or jwt)"
  default     = "jwt"
}

variable "discovery_url" {
  type        = string
  description = "(Optional) OIDC Discovery URL (base path) that will be used (if defined)"
  default     = ""
}

variable "bound_issuer" {
  type        = string
  description = "(Optional) Value of the iss claim that will be matched in a JWT"
  default     = ""
}

variable "namespace" {
  type        = string
  description = "(Optional) Namespace where the resources will be created"
  default     = null
}

variable "bound_claims_type" {
  type        = string
  description = "(Optional) How to interpret values in the bound_claims map. Can be string or glob"
  default     = ""
}

variable "bound_claims" {
  type        = map(string)
  description = "Map of claims and values to match against for the auth method. Can be a single string or list of strings separated by a comma"
  default     = {}
}

variable "policy_name" {
  type        = string
  description = "(Optional) Name of the policy that will be created"
  default     = ""
}

variable "create_policy" {
  type        = bool
  description = "(Optional) Boolean that allows for the creation of a policy as a part of the module execution. This will be associated with the jwt auth role if this is set to true"
  default     = false
}

variable "create_jwt_mount" {
  type        = bool
  description = "(Optional) Boolean that allows for the creation of an auth backend as a part of the module execution."
  default     = true
}

variable "policy_definition" {
  type        = any
  description = "(Optional) Raw Policy definition that can be supplied as a multi-line input value"
  default     = ""
}

variable "policy_file" {
  type    = string
  default = ""
}

variable "user_claim" {
  type        = string
  description = "(Required) The claim that will be used to uniquely identify the user"
}


variable "role_type" {
  type        = string
  description = "(Optional) Role type for the JWT auth backend that will be created."
  default     = "jwt"
}

variable "bound_audiences" {
  type        = set(string)
  description = "(Optional) List of aud claims to match against for the role"
  default     = []
}

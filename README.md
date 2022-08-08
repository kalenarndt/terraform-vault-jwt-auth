# terraform-vault-jwt-auth

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.2.0 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | >=2.22.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | 3.7.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vault_jwt_auth_backend.jwt](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/jwt_auth_backend) | resource |
| [vault_jwt_auth_backend_role.role](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/jwt_auth_backend_role) | resource |
| [vault_policy.pol](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |
| [vault_auth_backend.jwt](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/auth_backend) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bound_audiences"></a> [bound\_audiences](#input\_bound\_audiences) | (Optional) List of aud claims to match against for the role | `set(string)` | `[]` | no |
| <a name="input_bound_claims"></a> [bound\_claims](#input\_bound\_claims) | Map of claims and values to match against for the auth method. Can be a single string or list of strings separated by a comma | `map(string)` | `{}` | no |
| <a name="input_bound_claims_type"></a> [bound\_claims\_type](#input\_bound\_claims\_type) | (Optional) How to interpret values in the bound\_claims map. Can be string or glob | `string` | `""` | no |
| <a name="input_bound_issuer"></a> [bound\_issuer](#input\_bound\_issuer) | (Optional) Value of the iss claim that will be matched in a JWT | `string` | `""` | no |
| <a name="input_create_jwt_mount"></a> [create\_jwt\_mount](#input\_create\_jwt\_mount) | (Optional) Boolean that allows for the creation of an auth backend as a part of the module execution. | `bool` | `true` | no |
| <a name="input_create_policy"></a> [create\_policy](#input\_create\_policy) | (Optional) Boolean that allows for the creation of a policy as a part of the module execution. This will be associated with the jwt auth role if this is set to true | `bool` | `false` | no |
| <a name="input_discovery_url"></a> [discovery\_url](#input\_discovery\_url) | (Optional) OIDC Discovery URL (base path) that will be used (if defined) | `string` | `""` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | (Optional) Namespace where the resources will be created | `string` | `null` | no |
| <a name="input_path"></a> [path](#input\_path) | (Optional) Path where the JWT auth method will be mounted in Vault | `string` | `"jwt"` | no |
| <a name="input_policy_definition"></a> [policy\_definition](#input\_policy\_definition) | (Optional) Raw Policy definition that can be supplied as a multi-line input value | `any` | `""` | no |
| <a name="input_policy_file"></a> [policy\_file](#input\_policy\_file) | n/a | `string` | `""` | no |
| <a name="input_policy_name"></a> [policy\_name](#input\_policy\_name) | (Optional) Name of the policy that will be created | `string` | `""` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | (Required) Name of the Role that will be created for the JWT auth backend. | `string` | n/a | yes |
| <a name="input_role_type"></a> [role\_type](#input\_role\_type) | (Optional) Role type for the JWT auth backend that will be created. | `string` | `"jwt"` | no |
| <a name="input_token_policies"></a> [token\_policies](#input\_token\_policies) | (Required) List of roles to associate with the JWT Role | `list(string)` | `[]` | no |
| <a name="input_type"></a> [type](#input\_type) | (Optional) Type of the Auth backend that will be created (oidc or jwt) | `string` | `"jwt"` | no |
| <a name="input_user_claim"></a> [user\_claim](#input\_user\_claim) | (Required) The claim that will be used to uniquely identify the user | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bound_audiences"></a> [bound\_audiences](#output\_bound\_audiences) | Bound Claims associated with the jwt auth role |
| <a name="output_jwt_mount"></a> [jwt\_mount](#output\_jwt\_mount) | Output of the JWT mount that was created |
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | Name of the role that has been created |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

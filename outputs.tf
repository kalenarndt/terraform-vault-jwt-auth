output "bound_audiences" {
  value       = vault_jwt_auth_backend_role.role.bound_audiences
  description = "Bound Claims associated with the jwt auth role"
}

output "role_name" {
  value       = vault_jwt_auth_backend_role.role.role_name
  description = "Name of the role that has been created"
}

output "namespace" {
  value       = var.create_namespace ? concat(vault_namespace.ns.*.path, [""])[0] : var.namespace
  description = "Namespace that was used or created and used during the module execution"
}

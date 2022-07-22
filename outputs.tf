output "bound_audiences" {
  value       = vault_jwt_auth_backend_role.role.bound_audiences
  description = "Bound Claims associated with the jwt auth role"
}

output "role_name" {
  value       = vault_jwt_auth_backend_role.role.role_name
  description = "Name of the role that has been created"
}

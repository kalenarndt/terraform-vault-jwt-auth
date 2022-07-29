resource "vault_policy" "pol" {
  count     = var.create_policy ? 1 : 0
  namespace = var.namespace
  name      = var.policy_name
  policy    = length(var.policy_file) >= 1 ? file("${path.root}/${var.policy_file}") : var.policy_definition
  lifecycle {
    # Check Policy_Name isn't the default value
    precondition {
      condition     = var.policy_name != ""
      error_message = "var.policy_name must have a definition when creating a policy."
    }
  }
}

resource "vault_jwt_auth_backend" "jwt" {
  namespace          = var.namespace
  path               = var.path
  type               = var.type
  oidc_discovery_url = var.discovery_url
  bound_issuer       = var.bound_issuer
}

resource "vault_jwt_auth_backend_role" "role" {
  namespace         = var.namespace
  backend           = vault_jwt_auth_backend.jwt.path
  role_name         = var.role_name
  token_policies    = var.create_policy ? [vault_policy.pol[0].name] : var.token_policies
  bound_audiences   = var.bound_audiences
  bound_claims_type = var.bound_claims_type
  bound_claims      = var.bound_claims
  user_claim        = var.user_claim
  role_type         = var.role_type
}

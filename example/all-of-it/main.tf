module "jwt" {
  source            = "../"
  role_name         = "jwt-def"
  discovery_url     = "https://bmrf.io"
  bound_issuer      = "https://bmrf.io"
  namespace         = "admin/gcve"
  create_policy     = true
  policy_definition = <<-EOT
    path "*" {
      capabilities = ["create", "read", "update", "delete", "list", "sudo"]
    }
  EOT
  policy_name       = "admin"
  bound_claims_type = "glob"
  user_claim        = "user_claims_things"
  bound_audiences   = ["audience"]
  bound_claims = {
    sub = "super:claim:bound:*"
  }
}

module "jwt-file" {
  source            = "../"
  role_name         = "jwt-file"
  discovery_url     = "https://bmrf.io"
  bound_issuer      = "https://bmrf.io"
  create_policy     = true
  policy_file       = "admin.hcl"
  policy_name       = "admin"
  bound_claims_type = "glob"
  user_claim        = "user_claim"
  bound_audiences   = ["audience"]
  bound_claims = {
    sub = "supercool:bound:claim:*"
  }
}

module "jwt-existing-role" {
  source            = "../"
  role_name         = "jwt-file"
  discovery_url     = "https://bmrf.io"
  bound_issuer      = "https://bmrf.io"
  token_policies    = ["admin", "ops", "nevergonna", "giveyou", "up"]
  bound_claims_type = "glob"
  user_claim        = "nevergonna"
  bound_audiences   = ["letyou"]
  bound_claims = {
    sub = "down:nevergonna:runaround:anddesertyou*"
  }
}

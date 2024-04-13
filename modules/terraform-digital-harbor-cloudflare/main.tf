# TODO: look into this - the id on this data resource does not match what I think my account id is
data "cloudflare_accounts" "cloudflare_account_data" {
  name = var.cloudflare_account_name
}

locals {
  # account_id = data.cloudflare_accounts.cloudflare_account_data.id
  account_id = var.cloudflare_account_id
}

resource "cloudflare_zone" "zone" {
  # account_id = data.cloudflare_accounts.cloudflare_account_data.id
  account_id = local.account_id
  zone       = var.domain
}

resource "cloudflare_record" "cf_domain_record_develop" {
  zone_id         = cloudflare_zone.zone.id
  name            = "develop"
  value           = "develop.${replace(var.domain, ".", "-")}.pages.dev"
  type            = "CNAME"
  proxied         = true
  ttl             = 1
  allow_overwrite = true
}

resource "cloudflare_record" "cf_domain_record_www" {
  zone_id         = cloudflare_zone.zone.id
  name            = "www"
  value           = "${replace(var.domain, ".", "-")}.pages.dev"
  type            = "CNAME"
  proxied         = true
  ttl             = 1
  allow_overwrite = true
}

resource "cloudflare_record" "cf_domain_record" {
  zone_id         = cloudflare_zone.zone.id
  name            = var.domain
  value           = "${replace(var.domain, ".", "-")}.pages.dev"
  type            = "CNAME"
  proxied         = true
  ttl             = 1
  allow_overwrite = true
}

# Cloudflare Pages project with managing build config
resource "cloudflare_pages_project" "build_config" {
  # account_id = data.cloudflare_accounts.cloudflare_account_data.id
  account_id = local.account_id

  name              = replace(var.domain, ".", "-")
  production_branch = "main"
  source {
    type = "github"
    config {
      owner                         = var.github_owner
      repo_name                     = var.cloudflare_pages_target_repo
      production_branch             = "main"
      production_deployment_enabled = true
    }
  }
  build_config {
    root_dir = var.cloudflare_pages_root_dir
  }
  deployment_configs {
    preview {}
    production {}
  }
}
resource "cloudflare_pages_domain" "cf_domain" {
  # account_id = data.cloudflare_accounts.cloudflare_account_data.id
  account_id   = local.account_id
  project_name = cloudflare_pages_project.build_config.name
  domain       = var.domain
}

resource "cloudflare_pages_domain" "cf_domain_develop" {
  account_id   = local.account_id
  project_name = cloudflare_pages_project.build_config.name
  domain       = "develop.${var.domain}"
}

resource "cloudflare_pages_domain" "cf_domain_www" {
  account_id   = local.account_id
  project_name = cloudflare_pages_project.build_config.name
  domain       = "www.${var.domain}"
}




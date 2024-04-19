locals {
  account_id = var.cloudflare_account_id
}

# Cloudflare Pages project with managing build config
resource "cloudflare_pages_project" "build_config" {
  # account_id = data.cloudflare_accounts.cloudflare_account_data.id
  account_id = local.account_id

  name              = var.cloudflare_pages_name
  production_branch = "pages"
  source {
    type = "github"
    config {
      owner                         = var.github_owner
      repo_name                     = var.cloudflare_pages_target_repo
      production_branch             = var.production_branch
      production_deployment_enabled = true
      preview_branch_includes       = [var.preview_branch]
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
  count = var.domain != "" ? 1 : 0

  # account_id = data.cloudflare_accounts.cloudflare_account_data.id
  account_id   = local.account_id
  project_name = cloudflare_pages_project.build_config.name
  domain       = var.domain
}

resource "cloudflare_pages_domain" "cf_domain_develop" {
  count = var.domain != "" ? 1 : 0

  account_id   = local.account_id
  project_name = cloudflare_pages_project.build_config.name
  domain       = "develop.${var.domain}"
}

resource "cloudflare_pages_domain" "cf_domain_www" {
  count = var.domain != "" ? 1 : 0

  account_id   = local.account_id
  project_name = cloudflare_pages_project.build_config.name
  domain       = "www.${var.domain}"
}


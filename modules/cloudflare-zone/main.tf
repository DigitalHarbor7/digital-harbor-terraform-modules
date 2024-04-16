locals {
  account_id = var.cloudflare_account_id
}

resource "cloudflare_zone" "zone" {
  # account_id = data.cloudflare_accounts.cloudflare_account_data.id
  account_id = local.account_id
  zone       = var.domain
}


# TODO: make CNAMEs a list
resource "cloudflare_record" "cf_domain_record_develop" {
  zone_id         = cloudflare_zone.zone.id
  name            = "develop"
  value           = "develop.${var.cloudflare_pages_name}.pages.dev"
  type            = "CNAME"
  proxied         = true
  ttl             = 1
  allow_overwrite = true
}

resource "cloudflare_record" "cf_domain_record_www" {
  zone_id         = cloudflare_zone.zone.id
  name            = "www"
  value           = "${var.cloudflare_pages_name}.pages.dev"
  type            = "CNAME"
  proxied         = true
  ttl             = 1
  allow_overwrite = true
}

resource "cloudflare_record" "cf_domain_record" {

  zone_id = cloudflare_zone.zone.id
  name    = var.domain

  value           = "${var.cloudflare_pages_name}.pages.dev"
  type            = "CNAME"
  proxied         = true
  ttl             = 1
  allow_overwrite = true
}

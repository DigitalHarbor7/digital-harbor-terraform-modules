output "cloudflare_zone_name_servers" {
  value = cloudflare_zone.zone.name_servers
}

output "cloudflare_account_id" {
  value = data.cloudflare_accounts.cloudflare_account_data.id
}

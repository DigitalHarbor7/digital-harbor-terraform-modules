output "cloudflare_zone_name_servers" {
  value = cloudflare_zone.zone.name_servers
}
output "cloudflare_account_id" {
  value = cloudflare_zone.zone.account_id
}

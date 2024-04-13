# provider "namecheap" {
#   user_name = var.username
#   api_user  = var.username
#   api_key   = var.api_key
# }

provider "namecheapecosystem" {
  username  = var.username
  api_user  = var.username
  api_token = var.api_key
}

# Create a new Namecheap domain DNS
resource "namecheap_domain_dns" "mydns" {
  provider = namecheapecosystem
  domain   = var.domain

  nameservers = var.nameservers
}

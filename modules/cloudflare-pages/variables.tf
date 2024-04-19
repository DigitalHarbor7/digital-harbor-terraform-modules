variable "domain" { default = "" }
variable "production_branch" { default = "pages" }
variable "preview_branch" { default = "pages-dev" }
variable "cloudflare_pages_name" {}
variable "cloudflare_account_name" {}
variable "cloudflare_account_id" {}
variable "cloudflare_api_token" {}
variable "github_owner" {
  # default = "pypeaday"
  # default = "DigitalHarbor7"
}
variable "cloudflare_pages_target_repo" {
  # default = "DigitalHarbor"
}
variable "cloudflare_pages_root_dir" {
  # default = "_site"
}

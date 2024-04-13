variable "username" {}
variable "api_key" {}
variable "domain" {}
variable "nameservers" {
  type        = list(string)
  default     = []
  description = "List of DNS servers to setup as Namecheap custom DNS"
}

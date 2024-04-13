<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_namecheapecosystem"></a> [namecheapecosystem](#requirement\_namecheapecosystem) | 0.1.7 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_namecheapecosystem"></a> [namecheapecosystem](#provider\_namecheapecosystem) | 0.1.7 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [namecheapecosystem_namecheap_domain_dns.mydns](https://registry.terraform.io/providers/Namecheap-Ecosystem/namecheap/0.1.7/docs/resources/namecheap_domain_dns) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_key"></a> [api\_key](#input\_api\_key) | n/a | `any` | n/a | yes |
| <a name="input_domain"></a> [domain](#input\_domain) | n/a | `any` | n/a | yes |
| <a name="input_nameservers"></a> [nameservers](#input\_nameservers) | List of DNS servers to setup as Namecheap custom DNS | `list(string)` | `[]` | no |
| <a name="input_username"></a> [username](#input\_username) | n/a | `any` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
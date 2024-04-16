<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | 4.29.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 4.29.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_record.cf_domain_record](https://registry.terraform.io/providers/cloudflare/cloudflare/4.29.0/docs/resources/record) | resource |
| [cloudflare_record.cf_domain_record_develop](https://registry.terraform.io/providers/cloudflare/cloudflare/4.29.0/docs/resources/record) | resource |
| [cloudflare_record.cf_domain_record_www](https://registry.terraform.io/providers/cloudflare/cloudflare/4.29.0/docs/resources/record) | resource |
| [cloudflare_zone.zone](https://registry.terraform.io/providers/cloudflare/cloudflare/4.29.0/docs/resources/zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudflare_account_id"></a> [cloudflare\_account\_id](#input\_cloudflare\_account\_id) | n/a | `any` | n/a | yes |
| <a name="input_cloudflare_account_name"></a> [cloudflare\_account\_name](#input\_cloudflare\_account\_name) | n/a | `any` | n/a | yes |
| <a name="input_cloudflare_api_token"></a> [cloudflare\_api\_token](#input\_cloudflare\_api\_token) | n/a | `any` | n/a | yes |
| <a name="input_cloudflare_pages_name"></a> [cloudflare\_pages\_name](#input\_cloudflare\_pages\_name) | n/a | `any` | n/a | yes |
| <a name="input_domain"></a> [domain](#input\_domain) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudflare_zone_name_servers"></a> [cloudflare\_zone\_name\_servers](#output\_cloudflare\_zone\_name\_servers) | n/a |
<!-- END_TF_DOCS -->
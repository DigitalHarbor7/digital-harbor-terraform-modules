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
| [cloudflare_pages_domain.cf_domain](https://registry.terraform.io/providers/cloudflare/cloudflare/4.29.0/docs/resources/pages_domain) | resource |
| [cloudflare_pages_domain.cf_domain_develop](https://registry.terraform.io/providers/cloudflare/cloudflare/4.29.0/docs/resources/pages_domain) | resource |
| [cloudflare_pages_domain.cf_domain_www](https://registry.terraform.io/providers/cloudflare/cloudflare/4.29.0/docs/resources/pages_domain) | resource |
| [cloudflare_pages_project.build_config](https://registry.terraform.io/providers/cloudflare/cloudflare/4.29.0/docs/resources/pages_project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudflare_account_id"></a> [cloudflare\_account\_id](#input\_cloudflare\_account\_id) | n/a | `any` | n/a | yes |
| <a name="input_cloudflare_account_name"></a> [cloudflare\_account\_name](#input\_cloudflare\_account\_name) | n/a | `any` | n/a | yes |
| <a name="input_cloudflare_api_token"></a> [cloudflare\_api\_token](#input\_cloudflare\_api\_token) | n/a | `any` | n/a | yes |
| <a name="input_cloudflare_pages_name"></a> [cloudflare\_pages\_name](#input\_cloudflare\_pages\_name) | n/a | `any` | n/a | yes |
| <a name="input_cloudflare_pages_root_dir"></a> [cloudflare\_pages\_root\_dir](#input\_cloudflare\_pages\_root\_dir) | n/a | `any` | n/a | yes |
| <a name="input_cloudflare_pages_target_repo"></a> [cloudflare\_pages\_target\_repo](#input\_cloudflare\_pages\_target\_repo) | n/a | `any` | n/a | yes |
| <a name="input_domain"></a> [domain](#input\_domain) | n/a | `any` | n/a | yes |
| <a name="input_github_owner"></a> [github\_owner](#input\_github\_owner) | n/a | `any` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
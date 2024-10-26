# Terraform Playground

<img src="https://img.shields.io/badge/License-MIT-blue.svg" />

<p align="center">
  <img style="width:60%;" src="https://i.imgur.com/Qe3Dzt6.png">
  <br/>
  <sub><sup>(Photo by <a href="https://unsplash.com/@clemhlrdt?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Clément Hélardot</a> on <a href="https://unsplash.com/collections/SV-KO-htOoM/my-first-collection/9b0020f22e02b780910afe3a322692d8?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>)</sup></sub>
</p>

## Run

```sh
# bash src/tf_apply_staging.sh
terraform init
terraform fmt
terraform validate
terraform plan --auto-approve -var-file="staging/terraform.tfvars" -lock=false
terraform apply --auto-approve -var-file="staging/terraform.tfvars" -lock=false
terraform show
terraform output
```

## Ref

1. [Manage Your Google Workspace Organization | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/tutorials/it-saas/google-workspace)
2. [Terraform Registry - Google](https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/getting_started)

## Contribute

* [LICENSE](LICENSE)
* [CODE_OF_CONDUCT](CODE_OF_CONDUCT.md)
* [CONTRIBUTING](CONTRIBUTING.md)

<a href="https://github.com/an/terraform-playground/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=androchentw/terraform-playground" />
</a>

<!-- Links -->

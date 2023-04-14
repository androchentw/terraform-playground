#!/usr/bin/env bash
#
# usage: $ bash tf_apply_staging.sh

terraform init
terraform fmt
terraform validate
terraform plan --auto-approve -var-file="stating/terraform.tfvars" -lock=false
terraform apply --auto-approve -var-file="stating/terraform.tfvars" -lock=false
terraform show
terraform output

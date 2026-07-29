# Terraform Deployment

This starter deploys a resource group, virtual network, Log Analytics workspace, and Key Vault foundation.

## Prerequisites
- Terraform
- Azure CLI
- An Azure lab subscription
- Permission to create the listed resources

## Commands
```bash
az login
terraform init
terraform fmt -check
terraform validate
terraform plan
terraform apply
```

Do not commit state files or `terraform.tfvars`. Review cost and regional availability before applying.

# Terraform Helm Provider

```bash
terraform -chdir=terraform init
terraform -chdir=terraform plan -var-file=./envs/dev.tfvars
terraform -chdir=terraform apply -var-file=./envs/dev.tfvars -auto-approve
```
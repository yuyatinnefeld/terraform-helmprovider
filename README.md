# Terraform Helm Provider

```bash
terraform -chdir=terraform init
terraform -chdir=terraform plan -var-file=./envs/dev.tfvars
terraform -chdir=terraform apply -var-file=./envs/dev.tfvars -auto-approve

# Speed up with parallelism (default is 10) Don't overdo this 
terraform -chdir=terraform apply -var-file=./envs/dev.tfvars -auto-approve -parallelism=20

# Clean up
terraform -chdir=terraform destroy -var-file=./envs/dev.tfvars
```
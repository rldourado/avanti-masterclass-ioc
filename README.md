## Infractructure As Code

Infractructure As Code - IAC Scripts and Artifacts

<br />

### AWS

```(bash)
$ export AWS_DEFAULT_PROFILE=rldourado
$ # aws configure
$ aws eks list-clusters --region us-east-1 --output table
```

<br />

### RegistroBR

```(bash)
$ dig @1.1.1.1 +all stwconsult.tec.br ANY+
```

<br />

### Terraform - Install (Ubuntu)

```(bash)
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
```

#### Version Constraints

https://developer.hashicorp.com/terraform/language/expressions/version-constraints

### Terraform - CLI

```(bash)
$ terraform init
$ terraform providers
$ terraform fmt -recursive
$ terraform validate
$ terraform plan -out "main.tfplan"
$ terraform apply "main.tfplan"
$ terraform login
$ terraform logout
$ terraform destroy
```

### Terraform Cloud - Login

```(bash)
$ terraform login
```

### Terraform Cloud - Before Logout

```(bash)
mkdir -p terraform.tfstate.d/tfc-migration-test
terraform state pull > terraform.tfstate.d/tfc-migration-test/terraform.tfstate
mv .terraform/terraform.tfstate .terraform/terraform.tfstate.old

# Remove the cloud block in the config

terraform init
```

### Terraform Cloud - Logout

```(bash)
$ terraform logout
```

<br />

AWS Terraform
=============

Prerequisites
-------------
* configured user in AWS with necessary access
* access_key & secret_access_key are set on local system (~/.aws/{credentials,config})
* installed [terraform](https://www.terraform.io/) and [terragrund](https://github.com/gruntwork-io)
* bitbucket terragrund in AWS for remote terraform state


Initial Steps
-------------

* 00-bucket: create bucket for terraform remote config
```
terraform plan -var-file=../environment.tfvars
terraform apply -var-file=../environment.tfvars
rm terraform.tfstate # optional
```

Idempotent Steps
----------------
* 01-vpc: create vpc
Initial run for terraform remote config creation






```
terraform destroy -var-file=../environment.tfvars
```
    

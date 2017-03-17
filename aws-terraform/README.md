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
terraform [plan|apply] -var-file=../environment.tfvars
```
* in root folder: initialize terraform remote config in bucket
```
terraform remote config -backend=s3 \
  -backend-config="bucket=terraform-rustam" \
  -backend-config="key=terraform/terraform.tfstate" \
  -backend-config="region=eu-central-1" \
  && rm -rf .terraform
```

Idempotent Steps
----------------
* 01-vpc: create vpc
Initial run for terraform remote config creation
```
terragrunt [plan|apply] --terragrunt-config ../terraform.tfvars -var-file=../environment.tfvars
```






```
terraform destroy -var-file=../environment.tfvars
```
    


terraform {
  required_version = ">= 0.9"

  backend "s3" {
    region = "eu-central-1"
    lock = "false"
    #lock_table = "aws-terraform"
    encrypt = "true"
    bucket = "aws-terraform"
    key = "terraform/terraform.tfstate" 
  }
}


variable "env" {
  description = "Logic environment"
}

variable "aws_profile" {
  description = "Used AWS profile"
}

variable "aws_region" {
  description = "Used AWS region"
}

variable "state_bucket" {
  description = "Bucket to use for storing of remote state files."
}

variable "vpc_name" {
  description = "VPC name"
}

variable "env_net" {
  description = "Environment (VPC) CIDR. We work in the network 10.${var.env_net}.0.0/16."
}

variable "domain_name" {
  description = "Default domain name"
}

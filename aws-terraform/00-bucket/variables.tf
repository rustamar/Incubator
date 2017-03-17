
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

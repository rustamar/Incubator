terragrunt = {
  lock = {
    backend = "dynamodb"
    config {
      state_file_id = "vpc-rustam"
    }
  }

  remote_state = {
    backend = "s3"

    config {
      bucket  = "terraform-rustam"
      key     = "terraform/terraform.tfstate"
      region  = "eu-central-1"
    }
  }
}


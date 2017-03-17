
resource "aws_s3_bucket" "state_bucket" {
  bucket = "${var.state_bucket}"

  versioning = {
    enabled = true
  }

  tags = {
    Environment = "${var.env}"
  }
}


output "S3_bucket" {
  value = "${aws_s3_bucket.state_bucket.bucket}"
}

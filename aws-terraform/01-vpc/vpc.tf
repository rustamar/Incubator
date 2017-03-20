
resource "aws_vpc" "vpc" {
  cidr_block           = "10.${var.env_net}.0.0/16"
  enable_dns_support   = "true"
  enable_dns_hostnames = "false"

  tags {
    Name        = "${var.vpc_name}"
    Environment = "${var.env}"
  }

  lifecycle {
    create_before_destroy = "true"
  }
}

resource "aws_vpc_dhcp_options" "dns_resolver" {
  domain_name         = "${var.domain_name}"
  domain_name_servers = ["8.8.8.8", "8.8.4.4"]

  tags {
    Name        = "${var.vpc_name}"
    Environment = "${var.env}"
  }
}

resource "aws_vpc_dhcp_options_association" "dns_association" {
  vpc_id          = "${aws_vpc.vpc.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.dns_resolver.id}"
}

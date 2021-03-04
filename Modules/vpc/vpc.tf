resource "aws_vpc" "vpc_test" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_name
  }
}
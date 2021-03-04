resource "aws_subnet" "subnet_tes" {
  vpc_id     = var.vpc_id_input
  cidr_block = "192.168.0.0/24"

  tags = {
    Name = var.subnet_name
  }
}
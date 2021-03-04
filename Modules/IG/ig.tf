resource "aws_internet_gateway" "ig" {
  vpc_id = var.vpc_id_input

  tags = {
    Name = "test_IG"
  }
}
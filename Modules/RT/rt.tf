resource "aws_route_table" "rt" {
  vpc_id = var.vpc_id_rt_input
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.ig_input_rt
  }

  
  tags = {
    Name = "RT_Test"
  }
}
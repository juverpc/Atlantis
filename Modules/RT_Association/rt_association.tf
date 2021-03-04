resource "aws_route_table_association" "a" {
  subnet_id= var.rt_a_id_subnet_input
  route_table_id = var.rt_a_id_rt_input
}
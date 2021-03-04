resource "aws_eip" "eip" {
  instance = var.ec2_id_eip_input
  vpc      = true
}
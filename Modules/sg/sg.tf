resource "aws_security_group" "allow_ssh" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_test_id

  ingress {
    description = var.sg_description
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  
  tags = {
    Name = var.sg_name
  }
}
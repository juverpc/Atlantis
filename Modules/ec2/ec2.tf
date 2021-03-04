
resource "aws_instance" "Test_EC2" {
  ami = var.IMAGE
  instance_type = var.TYPE_EC2
  key_name =  var.name_key
  vpc_security_group_ids= [var.sg_test_id]
  subnet_id = var.subnet_id_
  
  tags = {
    Name = var.EC2_NAME
  }
}
module "vpc" {
  source = "../../Modules/vpc"
  vpc_name = "First_VPC_Test"
}

module "ig" {
    source = "../../Modules/IG"
    vpc_id_input= module.vpc.vpc_id_output
    
}
module "rt" {
    source = "../../Modules/RT"
    vpc_id_rt_input= module.vpc.vpc_id_output
    ig_input_rt= module.ig.ig_id_output
       
}
module "subnet" {
  source = "../../Modules/subnet"
  vpc_id_input=module.vpc.vpc_id_output
  subnet_name="Subnet_test"
}
module "rt_a" {
    source = "../../Modules/RT_Association"
    rt_a_id_subnet_input= module.subnet.subnet_id_output
    rt_a_id_rt_input= module.rt.rt_id_output
}
module "ec2" {
  source= "../../Modules/ec2"
  EC2_NAME="TEST_EC2"
  TYPE_EC2="t2.micro"
  IMAGE="ami-0be2609ba883822ec"
  name_key=module.key.name_key
  sg_test_id=module.sg.sg_test_id_output
  subnet_id_=module.subnet.subnet_id_output
}

module "key" {
    source = "../../Modules/key_pair"
    name_key="test_key"
}

module "eip" {
    source = "../../Modules/EIP"
    ec2_id_eip_input= module.ec2.ec2_id_output
    
}
module "sg" {
    source = "../../Modules/sg"
    sg_name="sg_test"
    sg_description="This is a SG for SSH connection"
    vpc_test_id=module.vpc.vpc_id_output
}
module "my_first_instance" {
  source        = "./modules/ec2-instance"
  instance_type = "t2.micro"
  name_prefix   = "alice"
}

module "my_second_instance" {
  source        = "./modules/ec2-instance"
  instance_type = "t3.micro"
  name_prefix   = "bob"
}

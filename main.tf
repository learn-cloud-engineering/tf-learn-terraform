module "my_first_instance" {
  source        = "./modules/ec2-instance"
  instance_type = "t2.micro"
  name_prefix   = "alice"
  vpc_id = "vpc-0a498991ea4dd5943"
}

module "my_second_instance" {
  source        = "./modules/ec2-instance"
  instance_type = "t3.micro"
  name_prefix   = "bob"
}

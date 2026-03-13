locals {
  vpc_id = var.vpc_id == "" ? data.aws_vpc.default.id : var.vpc_id
}

resource "aws_instance" "app_server" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type

  vpc_security_group_ids = [aws_security_group.app_server_sg.id]

  tags = {
    Name = "${var.name_prefix}-app-server"
  }
}

resource "aws_security_group" "app_server_sg" {
  name        = "${var.name_prefix}-app-server-sg"
  description = "The security group for the app server"
  vpc_id      = local.vpc_id
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.app_server_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "tcp"
  from_port         = 22
  to_port           = 22
}

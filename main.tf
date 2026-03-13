resource "aws_instance" "app_server" {
  ami           = aws_ami.amazon_linux.id
  instance_type = var.instance_type

  tags = {
    Name = "jsrn-app-server"
  }
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

output "amazon_linux_ami_id" {
  value = data.aws_ami.amazon_linux.id
}

output "amazon_linux_ami_arn" {
  value = data.aws_ami.amazon_linux.arn
}

output "amazon_linux_ami_name" {
  value = data.aws_ami.amazon_linux.name
}

output "aws_instance_public_dns" {
  value = aws_instance.app_server.public_dns
}

output "aws_instance_private_dns" {
  value = aws_instance.app_server.private_dns
}

output "aws_instance_public_ip" {
  value = aws_instance.app_server.public_ip
}

output "aws_instance_private_ip" {
  value = aws_instance.app_server.private_ip
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  default = "t3.micro"

  validation {
    condition = contains(["t2.micro","t3.micro"], var.instance_type)
    error_message = "Invalid instance type. Please choose from: t2.micro, t3.micro"
  }
}

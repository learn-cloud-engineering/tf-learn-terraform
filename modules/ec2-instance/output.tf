
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

output "aws_security_group_name" {
  value = aws_security_group.app_server_sg.name
}

output "aws_security_group_id" {
  value = aws_security_group.app_server_sg.id
}

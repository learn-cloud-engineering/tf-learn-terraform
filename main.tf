resource "aws_instance" "app_server" {
  ami           = aws_ami.amazon_linux.id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

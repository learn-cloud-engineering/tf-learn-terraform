resource "aws_instance" "app_server" {
  ami           = "ami-0be9cb9f67c8dabd6"
  instance_type = "t3.micro"

  tags = {
    Name = "jsrn-app-server"
  }
}

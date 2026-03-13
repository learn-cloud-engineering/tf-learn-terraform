variable "instance_type" {
  description = "The instance type for the EC2 instance"
  default     = "t3.micro"

  validation {
    condition     = contains(["t2.micro", "t3.micro"], var.instance_type)
    error_message = "Invalid instance type. Please choose from: t2.micro, t3.micro"
  }
}

variable "name_prefix" {
  description = "The name prefix for all resources"
  default     = "jsrn"
}

variable "vpc_id" {
  description = "The VPC id to launch the EC2 instance in"
  default     = ""
}

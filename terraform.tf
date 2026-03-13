terraform {
  required_version = ">= 1.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.36.0"
    }
  }

  backend "s3" {
    bucket = "sctp-ce12-tfstate-bucket"
    key    = "jsrn/tf-learn-terraform/terraform.tfstate"
    region = "ap-southeast-1"
  }
}

terraform {
  required_version = "1.1.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.70.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  profile = var.aws_profile
}

resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type
   #vpc_id = "vpc-f2dbbf8f"
    subnet_id = "subnet-05f77fd0b2a9f0753"

  tags = var.instance_tags
}

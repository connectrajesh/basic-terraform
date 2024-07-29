terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
}


resource "aws_instance" "development_server" {
  ami           = "ami-046d5130831576bbb"
  instance_type = "t2.micro"

  tags = {
    Name = "EC2-Dev-Server"
  }
}
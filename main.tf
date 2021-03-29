#Main Terraform Config file

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
    
}

resource "aws_instance" "web" {
  ami           = "ami-068d43a544160b7ef"
  instance_type = "t2.micro"

  tags = {
    Name = "New Instance"
  }
}
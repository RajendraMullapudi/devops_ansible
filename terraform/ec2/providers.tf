terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.68.0"
    }
  }
}

provider "aws" {
    # Configuration options
  region = "us-east-1"
}
 resource "aws_instance" "terraform" {

     ami = "ami-09c813fb71547fc4f"
     instance_type = "t2.micro"
     vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
     tags = {
         Name = "terraform"
     }
 }


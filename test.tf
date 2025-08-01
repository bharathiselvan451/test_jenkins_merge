terraform {
  backend "s3" {
    bucket                  = "terraform-s3-state-0223"
    key                     = "my-terraform-project"
    region                  = "us-east-1"
    shared_credentials_file = "~/.aws/credentials"
  }
}

provider "aws" {
  region                  = "us-east-1"
}



resource "aws_instance" "this" {
  ami = "ami-08a6efd148b1f7504"
  instance_type = "t2.micro"
  tags = {
    Name = "test"
  }
}
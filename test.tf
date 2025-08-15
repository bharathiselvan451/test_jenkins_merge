terraform {
  backend "s3" {
    bucket                  = "terraform-s3-state-0224"
    key                     = "my-terraform-project"
    dynamodb_table          = "tf-state-lock"
    region                  = "us-east-2"
    shared_credentials_file = "~/.aws/credentials"
  }
}

provider "aws" {
  region                  = "us-east-2"
}



resource "aws_instance" "this" {
  ami = "ami-0d1b5a8c13042c939"
  instance_type = "t2.micro"
  tags = {
    Name = "test-now-3"
  }
}

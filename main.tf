terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "example_instances" {
  ami           = "ami-02457590d33d576c3"
  count         = 2
  instance_type = "t2.micro"

  tags = {
    Name = "test-spot-${count.index + 1}"
  }
#   lifecycle {
#     prevent_destroy = true
#   }
}
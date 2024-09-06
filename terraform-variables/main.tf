provider "aws" {
  region     = "ap-south-1"
  access_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXX"
  secret_key = "YYYYYYYYYYYYYYYYYYYYYYYYYYYY"
} 

resource "aws_instance" "ec2_demo" {
    ami = "ami-0522ab6e1ddcc7055"
    instance_type = var.instance_type
    tags = {
	Name = var.tag
  }
}


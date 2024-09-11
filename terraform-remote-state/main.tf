provider "aws" {
  region     = "ap-south-1"
  access_key = "XXXXXXXXXXXXXXXXXXXXXX"
  secret_key = "XXXXXXXXXXXXXXXXXXXXXXXXXX"
}

terraform {
  backend "s3" {
   bucket = "9sept-terraform-state-bucket"
   key    = "key/terraform.tfstate"
   region = "ap-south-1"
  } 
}

resource "aws_instance" "ec2_demo" {
    ami = "ami-0522ab6e1ddcc7055"
    instance_type = "t2.micro"
    tags = {
	Name = "Terraform EC2 Instance"
  }
}

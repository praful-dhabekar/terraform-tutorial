provider "aws" {
  region     = "ap-south-1"
  access_key = "xxxxxxxxxxxxxxxxx"
  secret_key = "xxxxxxxxxxxxxxxxxxxxxxxxxx"
}

resource "aws_instance" "ec2_example" {
   
   ami           = "ami-0522ab6e1ddcc7055"
   instance_type = "t2.micro"
   
   tags = {
           Name = "test - Terraform EC2"
   }
}

output "my_console_output" {
  value = aws_instance.ec2_example.public_ip
}


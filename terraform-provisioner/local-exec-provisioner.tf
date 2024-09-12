provider "aws" {
  region     = "ap-south-1"
  access_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXX"
  secret_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
}

resource "aws_instance" "ec2_example" {

    ami = "ami-0522ab6e1ddcc7055"  
    instance_type = "t2.micro" 
    tags = {
      Name = "Terraform EC2"
    }
  
# This will create file locally
  provisioner "local-exec" {
    command = "touch praf-test-file.txt" 
 }
}



provider "aws" {
    access_key = "${var.AWS_ACCESS_KEY}"
    secret_key = "${var.AWS_SECRET_KEY}"
    region = "ap-south-1"
}

resource "aws_instance" "MyFirstInstance" {
    instance_type = "t2.micro"
    ami = "ami-0cca134ec43cf708f"
    count = 2
    tags = {
      "Name" = "MyMachine_${count.index}"
    }
  
}
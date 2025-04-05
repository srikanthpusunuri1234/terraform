provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 3
ami = ""
key_name = "sri11"
vpc_security_group_ids = ""
instance_type ="t2.micro"
tags = {
Name = var.instace_name[count.index]
}

}

variable "instance_name" {
default = ["jenansi","test10","monitoring"]
}

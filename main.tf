provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 3
ami = "ami-0a9a48ce4458e384e"
key_name = "sri11"
vpc_security_group_ids = "sg-0e6403a34209c36b0"
instance_type ="t2.micro"
tags = {
Name = var.instace_name[count.index]
}

}

variable "instance_name" {
default = ["jenansi","test10","monitoring"]
}

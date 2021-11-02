provider "aws" {
    region = "us-east-1"
    profile = var.profile
}

resource "aws_instance" "rmq" {
    ami = "ami-09e67e426f25ce0d7"
    instance_type = "t2.micro"
    key_name = "buttonClick"
    vpc_security_group_ids = ["sg-0e85084ae029f70e5"] # buttonClick security group

    tags = {
        Name = var.name
        group = var.group
    }
}
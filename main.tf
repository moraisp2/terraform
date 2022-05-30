terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}

provider "aws" {
    region = "eu-west-2"
}

resource "aws_instance" "myinstance" {
    ami = "ami-03e08294cd0340696"
    instance_type = "t3.micro"
    subnet_id = "subnet-0118788164e662691"
    tags = {
        Name = "pedro.morais.terraform"
    }
}
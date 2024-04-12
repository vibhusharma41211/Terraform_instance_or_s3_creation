terraform {
        required_providers{
                aws = {
        	        source = "hashicorp/aws"
                	version = "~> 4.16"
}
}
        required_version = ">=1.2.0"
}

provider "aws" {
        region = "us-east-1"
}

locals {
	instances = toset(["Realme","Oppo","iphone","Samsung"])
}

resource "aws_instance" "aws_ec2_instance" {
        for_each = local.instances
        ami = "ami-080e1f13689e07408"
        instance_type = "t2.micro"
        tags = {
                Name = each.key
}
}

output "ec2_public_IPs" {
        value = aws_instance.aws_ec2_instance[*].public_ip
}

output "ec2_Instance_Names"{
	value = aws_instance.aws_ec2_instance[*].tags
}

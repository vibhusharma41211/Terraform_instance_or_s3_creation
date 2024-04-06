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

resource "aws_instance" "aws_ec2_instance" {
        count = 1
        ami = "ami-080e1f13689e07408"
        instance_type = "t2.micro"
        tags = {
                Name = "TerraformTestServerInstance"
}
}

output "ec2_public_IPs" {
        value = aws_instance.aws_ec2_instance[*].public_ip
}

resource "aws_s3_bucket" "s3_bucket"{
        bucket = "vibhu41211-s3-bucket"
	tags = {
		Name = "vibhu41211-s3-bucket"
                Environment = "Dev"

}
}

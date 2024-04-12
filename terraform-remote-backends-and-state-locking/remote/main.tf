provider "aws" {
	region = "us-east-1"
}

resource "aws_instance" "ec2_instance" {
	count = 2
	ami = "ami-080e1f13689e07408"
	instance_type = "t2.micro"
	tags = {
		name = "demo-instance"

}
}

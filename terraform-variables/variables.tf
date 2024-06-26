variable "filename"{
	default = "/home/ubuntu/terraform/terraform-variables/devops-automated.txt"

}

variable "content"{
	default = "This is autogenerated from a variable"
}

variable "I_am_Don"{}

variable "content_map"{
	type = map
	default = {
	"content1" = "This is cool"
	"content2" = "This is even cooler"

}
}

variable "file_list" {
	type = list
	default = ["/home/ubuntu/terraform/terraform-variables/file_1.txt","/home/ubuntu/terraform/terraform-variables/file_2.txt"]
}

variable "aws_ec2_object"{
	type = object({
		name = string
		instance = number
		keys = list(string)
		ami = string
})

default = {
	name = "test_ec2_instance"
	instance = 4
	keys = ["key1.pem","key2.pem"]
	ami = "Ubuntu ami-080e1f13689e07408"
}
}

variable "no_of_students"{
	
}

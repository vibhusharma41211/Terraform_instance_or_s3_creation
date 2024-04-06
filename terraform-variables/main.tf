resource "local_file" "devops"{
	filename = "/home/ubuntu/terraform/terraform-variables/devops_test.txt"
	content = var.content_map["content1"]

}

resource "local_file" "resource-var"{
	filename = var.filename
	content = var.content_map["content2"]
}

output "I_am_Don"{
	value = var.I_am_Don
}

resource "local_file" "devops2"{
        filename = var.file_list[0]
        content = var.content_map["content1"]

}

resource "local_file" "resource-var2"{
        filename = var.file_list[1]
        content = var.content_map["content2"]
}

output "aws_ec2_instances" {
	value = var.aws_ec2_object
}

output "tf_batch_students"{
	value = var.no_of_students
}

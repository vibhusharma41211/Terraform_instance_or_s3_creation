resource "local_file" "Devops"{
	filename = "/home/ubuntu/terraform/terraform-local/Devops-automated-file.txt"
	content = "I'll become a Devops Enginner."
}

resource "random_string" "RanStr" {
length = 20
special = true
override_special = "!@#$%^&*()-_=+[]{}<>:?"

}


output "RanStr" {
value = random_string.RanStr[*].result
}

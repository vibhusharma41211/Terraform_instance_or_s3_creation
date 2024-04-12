terraform {
        required_providers {
                aws = {
                        source = "hashicorp/aws"
                        version = "4.66.1"
		}
	}

backend "s3" {
	bucket = "vibhusharma41211-statelocking-bucket"
	key = "terraform.tfstate"
	region = "us-east-1"
	dynamodb_table = "vibhusharma41211-statelocking-table"
	}
}

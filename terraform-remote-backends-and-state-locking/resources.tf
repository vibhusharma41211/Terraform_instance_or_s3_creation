resource "aws_s3_bucket" "s3_bucket" {
	bucket = "vibhusharma41211-statelocking-bucket"
}

resource "aws_dynamodb_table" "dynamo_table" {
	name = "vibhusharma41211-statelocking-table"
	billing_mode = "PAY_PER_REQUEST"
	hash_key = "LockID"
	attribute {
		name = "LockID"
		type = "S"
}
}

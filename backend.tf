# Provider
provider "aws" {
  region = "us-west-2"
}


# Backend Block - S3 and enable lock

resource "aws_s3_bucket" "bucket" {
  bucket = "myprj-terraform-state"

  object_lock_enabled = true

  tags = {
      Name = "S3 Remote Terraform State Store"
    }
}

# Create DynamoDB
resource "aws_dynamodb_table" "terraform-lock" {
    name = "myprj_table"
    read_capacity = 5
    write_capacity = 5
    hash_key = "LockID"
    attribute {
      name = "LockID"
      type = "S"
    }
    tags = {
      Name = "DynamoDB Terraform State Lock Table"
    }
  
}
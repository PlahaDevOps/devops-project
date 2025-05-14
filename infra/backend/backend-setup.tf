provider "aws" {
  region = "us-east-1"   # change if you prefer another region
}

resource "aws_s3_bucket" "tfstate" {
  bucket = "shivu-devops-terraform-state"  # must be globally unique
  acl    = "private"

  versioning {
    enabled = true
  }
}

resource "aws_dynamodb_table" "tf_locks" {
  name         = "shivu-terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

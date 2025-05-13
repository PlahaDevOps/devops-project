terraform {
  backend "s3" {
    bucket         = "shivu-devops-terraform-state"
    key            = "labs/02-terraform-ec2-docker/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "shivu-terraform-locks"
    encrypt        = true
  }
}

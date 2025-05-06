variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "ami_id" {
  type    = string
  default = "ami-0c94855ba95c71c99" # Amazon Linux 2 AMI in us-east-1
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

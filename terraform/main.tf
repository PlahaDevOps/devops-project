provider "aws" {
  region = var.aws_region
}

resource "aws_key_pair" "devops_key" {
  key_name   = "devops-key"
  public_key = file("~/.ssh/devops-key.pub")
}

resource "aws_instance" "devops_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = aws_key_pair.devops_key.key_name   # 👈 Add this line

  tags = {
    Name = "DevOps-EC2"
  }

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello from DevOps EC2" > /home/ec2-user/hello.txt
              EOF
}

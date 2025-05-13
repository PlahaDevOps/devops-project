provider "aws" {
  region = var.aws_region
}

resource "aws_key_pair" "devops_key" {
  key_name   = "devops-key"
  public_key = var.ssh_public_key
}
variable "ssh_public_key" {
  description = "Public key content for EC2 key pair"
  type        = string
}
resource "aws_instance" "devops_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = aws_key_pair.devops_key.key_name

  tags = {
    Name = "DevOps-EC2"
  }

  user_data = <<-EOF
#!/bin/bash
yum update -y
amazon-linux-extras install docker -y
systemctl enable docker
systemctl start docker
usermod -aG docker ec2-user
sleep 10
docker run -d -p 80:80 nginx
EOF

}

resource "aws_eip" "devops_eip" {
  domain   = "vpc"
  instance = aws_instance.devops_ec2.id
}


output "public_ip" {
  value = aws_eip.devops_eip.public_ip
} # test deploy trigger
# trigger CI

# 🛠️ Terraform EC2 + Docker Lab (`02-terraform-ec2-docker`)

> **Lab ID:** `02-terraform-ec2-docker`  
> **Category:** Terraform + AWS  
> **Level:** Beginner to Intermediate  
> **Objective:** Provision an EC2 instance and install Docker via Terraform.

This lab demonstrates how to use **Terraform** to provision an **EC2 instance** on AWS, set up **SSH access** using a public key, and install **Docker** via a cloud-init script.

---

## 📁 Files

| File | Description |
|------|-------------|
| `.gitignore` | Ensures sensitive Terraform files are not committed |
| `.terraform.lock.hcl` | Locks provider versions for reproducible builds |
| `backend.tf` | Defines remote state configuration (e.g., S3) |
| `devops-key.pub` | SSH public key used to log in to the EC2 instance |
| `main.tf` | Core configuration (VPC, EC2, SG, user data) |
| `outputs.tf` | Displays public IP of EC2 instance post-deployment |
| `terraform.tfvars` | Variable values for Terraform input |
| `variables.tf` | Variable declarations and defaults |

---

## ✅ What This Lab Does

- Provisions an **EC2 instance**
- Injects a user-supplied **SSH public key**
- Creates a **security group** allowing port 22 (SSH)
- Automatically installs **Docker** using `user_data`
- Outputs the **public IP address** of the instance

---

## 🧰 Prerequisites

- AWS CLI (`aws configure`)
- Terraform installed (`v1.0+`)
- Valid AWS IAM credentials
- An SSH key pair (`devops-key.pub` and matching `.pem` private key)

---

## 🔧 Configuration Steps

This lab provisions an EC2 instance using Terraform and installs Docker via `user_data`.

---

## Sections

### 1. EC2 Provisioning
- `main.tf`: Defines EC2 instance, security group, and SSH key setup.
- `devops-key.pub`: Public key injected into instance.

### 2. Remote State (Optional)
- `backend.tf`: S3 remote backend support.

### 3. Docker Setup
- Docker is installed using inline `user_data` during instance launch.

### 4. Configuration
- `variables.tf`: Inputs like region, AMI, key name, etc.
- `terraform.tfvars`: Populates actual values.
- `outputs.tf`: Shows public IP after apply.

---

## Usage

### 1. Set up your vars

Update `terraform.tfvars`:

```hcl
region         = "us-east-1"
instance_type  = "t2.micro"
ssh_public_key = file("devops-key.pub")
ami_id         = "ami-0c02fb55956c7d316"
```

### 2. Run Terraform

```bash
terraform init
terraform apply -var-file="terraform.tfvars"
```

### 3. SSH into instance

```bash
ssh -i ~/.ssh/<your-key>.pem ec2-user@<public-ip>
```

### 4. Check Docker

```bash
docker --version
sudo systemctl status docker
```

To test Docker:
```bash
sudo docker run hello-world
```
---

## Destroy Resources

```bash
terraform destroy -var-file="terraform.tfvars"
```

## 🔗 Next Lab

→ [03-ci-cd-pipelines](../03-ci-cd-pipelines) to build automated pipelines for provisioning and deployment.

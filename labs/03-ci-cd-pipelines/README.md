# 🔁 Lab 03 - CI/CD Pipelines with GitHub Actions

This lab demonstrates how to automate infrastructure and container workflows using **GitHub Actions**. It integrates directly with the Terraform setup from Lab 02, enabling automated provisioning of EC2, Docker installation, and Nginx deployment.

---

## 🎯 Objectives

- Automate `terraform init`, `plan`, `apply`, and `destroy` via GitHub Actions
- Build Docker images and push to a registry (future step)
- Run CI checks like validation and formatting on every push
- Use secrets for secure automation
- Enable reusable pipelines for future labs

---

## 📁 Lab Structure


> 🗂 These files are **reference copies** of the live workflows under `.github/workflows/`.
## 📁 Lab Structure

```
labs/03-ci-cd-pipelines/
├── README.md
└── workflows/
    ├── terraform-ci.yml
    ├── terraform-deploy.yml
    └── terraform-destroy.yml
```

## ⚙️ Live Workflows

Your actual CI/CD pipelines are active under:

```
.github/workflows/
├── terraform-ci.yml
├── terraform-deploy.yml
└── terraform-destroy.yml
```

These are connected to the infrastructure code in:

labs/02-terraform-ec2-docker/


---

## 🚀 Workflow Overview

### ✅ `terraform-ci.yml`
Runs on every push to validate and plan infrastructure:

- `terraform init`
- `terraform fmt -check`
- `terraform validate`
- `terraform plan`

### 🚀 `terraform-deploy.yml`
Triggered manually or on tag/release:

- Deploys EC2 via Terraform
- Installs Docker on EC2
- Deploys Nginx container

### 🗑 `terraform-destroy.yml`
Cleans up provisioned infrastructure:

- Runs `terraform destroy`

---

## 🔐 Secrets Used

The workflows rely on GitHub repository secrets configured under:

Settings → Secrets → Actions


Common ones include:

- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`

---

## 📚 References

- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Terraform GitHub Action](https://github.com/hashicorp/setup-terraform)
- [Learn GitHub Actions](https://docs.github.com/en/actions/learn-github-actions)

---

> 💡 Tip: In future labs, these pipelines can be extended for Docker image build, Helm charts, or GitOps-based Kubernetes deploys.

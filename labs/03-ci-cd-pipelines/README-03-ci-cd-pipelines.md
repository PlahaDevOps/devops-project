# ⚙️ CI/CD Pipelines Lab (`03-ci-cd-pipelines`)

> **Lab ID:** `03-ci-cd-pipelines`  
> **Category:** DevOps Automation  
> **Level:** Intermediate  
> **Objective:** Build CI/CD pipelines using GitHub Actions to automate application deployment.

This lab walks through setting up a basic **CI/CD pipeline** using **GitHub Actions** to automate tasks like testing and deploying Dockerized applications.

---

## 📁 Structure

| Folder / File | Description |
|---------------|-------------|
| `.github/workflows/ci.yml` | GitHub Actions workflow file for CI pipeline |
| `app/` | Application source code (e.g., Python, Node.js) |
| `Dockerfile` | Image build definition for the app |
| `README.md` | Lab instructions |

---

## ✅ What You'll Learn

- How to define and trigger GitHub Actions workflows
- Build and test Docker images on push/PR
- Push images to Docker Hub or GitHub Container Registry (GHCR)
- Deploy to test environments (optional)

---

## 🚀 Usage

### 1. Set Up GitHub Repo

- Push this project to a new GitHub repository
- Enable Actions tab

### 2. Configure Secrets

Go to `Settings → Secrets` in GitHub and add:

- `DOCKER_USERNAME`
- `DOCKER_PASSWORD`
- (Optional) `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY` for cloud deploys

---

### 3. Trigger Workflow

Commit and push changes:

```bash
git add .
git commit -m "Trigger CI"
git push
```

GitHub Actions will build the image and optionally deploy it.

---

## 🧹 Cleanup

- Revoke repo secrets if testing
- Delete any pushed images from Docker Hub / GHCR

---

## 🔗 Next Lab

→ [04-k8s-intro](../04-k8s-intro) to deploy and scale apps using Kubernetes.
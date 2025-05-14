# 🐳 Docker Basics Lab (`01-docker-basics`)

> **Lab ID:** `01-docker-basics`  
> **Category:** Docker Fundamentals  
> **Level:** Beginner  
> **Objective:** Learn Docker by building and running a single-container and multi-container Python app.

This lab introduces containerization with Docker through two projects: a **simple web app** and a **multi-container application** using Docker Compose.

---

## 📁 Structure

| Folder / File | Description |
|---------------|-------------|
| `simple-web-app/` | A basic Python web app built into a single container |
| `multi-container-app/` | Python app using Docker Compose with external services (e.g. Redis) |
| `Dockerfile` (root) | Generic Dockerfile (unused by subprojects) |
| `.gitkeep` | Keeps empty folders under version control |

---

## ✅ What You'll Learn

### 🔸 Simple Web App
- How to write a Dockerfile for a Python app
- Build and run the app in a container
- Expose it to your local machine

### 🔸 Multi-Container App
- Use `docker-compose.yml` to define multiple services
- Link services (e.g., web ↔ Redis)
- Use `requirements.txt` to install dependencies during build

---

## 🚀 Usage

### ▶️ 1. Simple Web App

```bash
cd simple-web-app
docker build -t simple-web-app .
docker run -d -p 3000:3000 simple-web-app
```

Visit: [http://localhost:3000](http://localhost:3000)

---

### ▶️ 2. Multi-Container App

```bash
cd ../multi-container-app
docker compose up -d
```

Verify containers:

```bash
docker ps
```

Stop and remove:

```bash
docker compose down
```

---

## 🧹 Cleanup

Remove all containers and dangling images:

```bash
docker container prune
docker image prune
```

---

## 📝 Notes

- Ensure Docker is running (Docker Desktop or Docker daemon)
- Use `docker logs <container_id>` to troubleshoot issues
- Python apps are likely using Flask or FastAPI

---

## 🔗 Next Lab

→ [02-terraform-ec2-docker](../02-terraform-ec2-docker) to provision Docker-ready EC2 infrastructure.
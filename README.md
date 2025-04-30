# Devops Project Lab


This repository contains hands-on DevOps labs and configurations as I learn and practice key DevOps tools and workflows.

---

## 📦 Docker

### 1. Simple Flask App (`docker/simple-web-app/`)
- Build and run a minimal Flask app using Docker
- Learn Dockerfile basics, port mapping, image build/run

```bash
cd docker/simple-web-app
docker build -t flask-app .
docker run -p 5050:5000 flask-app

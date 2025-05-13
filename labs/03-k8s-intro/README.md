# Kubernetes Intro Lab

This lab includes a basic nginx Deployment and NodePort Service for testing Kubernetes in Minikube.

## Files
- `nginx-deployment.yaml`: Creates 2 nginx pods behind a Deployment
- `nginx-service.yaml`: Exposes the deployment using a NodePort service

## Usage
```bash
kubectl apply -f nginx-deployment.yaml
kubectl apply -f nginx-service.yaml
minikube service nginx-service

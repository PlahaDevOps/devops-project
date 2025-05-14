# Kubernetes Intro Labs (`03-k8s-intro`)

This lab set explores core Kubernetes objects and features using Nginx.

## Sections

### 1. Pod
- `nginx-pod.yaml`: Basic Pod spec.

### 2. Deployment
- `nginx-deployment.yaml`: 2 replicas.
- `nginx-service.yaml`: NodePort access on port 30080.

### 3. ConfigMap
- `nginx-configmap.yaml`: Inline config.
- `nginx-custom.conf`: External file version.

### 4. Secret
- `nginx-secret.yaml`: Stores credentials.

### 5. Probes
- Adds liveness & readiness probes to deployment.

### 6. Autoscaling
- Uses HPA to auto-scale based on CPU usage.

## Usage

Apply any file with:
```bash
kubectl apply -f <file-path>

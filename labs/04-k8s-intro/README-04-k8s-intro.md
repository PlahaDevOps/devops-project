# ☸️ Kubernetes Intro Lab (`04-k8s-intro`)

> **Lab ID:** `04-k8s-intro`  
> **Category:** Kubernetes Basics  
> **Level:** Intermediate  
> **Objective:** Understand core Kubernetes objects like Pods, Deployments, Services, and use HPA for autoscaling.

This lab explores core **Kubernetes concepts** using an Nginx-based application to demonstrate fundamental components like Pods, Deployments, ConfigMaps, Secrets, and Horizontal Pod Autoscaling.

---

## 📁 Structure

| File | Purpose |
|------|---------|
| `nginx-pod.yaml` | Basic Pod definition |
| `nginx-deployment.yaml` | Deployment with 2 replicas |
| `nginx-service.yaml` | NodePort service exposing the deployment |
| `nginx-configmap.yaml` | Inline ConfigMap for Nginx |
| `nginx-custom.conf` | External config file for Nginx |
| `nginx-secret.yaml` | Kubernetes Secret with credentials |
| (Probes section) | Liveness and readiness probe example |
| (HPA section) | Horizontal Pod Autoscaler YAML |

---

## ✅ What You'll Learn

- Run and inspect Pods
- Use Deployments to manage replicas
- Expose services via NodePort
- Store configs with ConfigMap and Secret
- Use health probes
- Enable autoscaling with HPA

---

## 🚀 Usage

Apply any manifest with:

```bash
kubectl apply -f <file>.yaml
```

Example:

```bash
kubectl apply -f nginx-deployment.yaml
```

Check resources:

```bash
kubectl get pods
kubectl get svc
kubectl get deploy
```

---

## 🧹 Cleanup

```bash
kubectl delete -f .
```

---

## 🔗 Next Lab

🎉 You've completed the intro labs! Explore advanced Kubernetes or CI/CD labs next.

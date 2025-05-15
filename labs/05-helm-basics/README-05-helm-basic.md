# 🧭 Helm Basics Lab (`05-helm-basics`)

> **Lab ID:** `05-helm-basics`  
> **Category:** Kubernetes Package Management  
> **Level:** Intermediate  
> **Objective:** Learn how to use Helm to package, deploy, and manage applications on Kubernetes using Helm charts.

---

## 📁 Structure

| File / Folder        | Description |
|----------------------|-------------|
| `nginx-chart/`       | Helm chart scaffold for deploying Nginx |
| `helm-install.sh`    | Script to install the Helm release |
| `helm-upgrade.sh`    | Script to upgrade the Helm release |
| `helm-uninstall.sh`  | Script to uninstall the Helm release |
| `README-05-helm-basic.md` | This lab guide |

---

## ✅ What This Lab Covers

- Create and customize a Helm chart
- Use `values.yaml` to parameterize deployments
- Deploy Nginx using Helm
- Upgrade Helm release (e.g. change replica count)
- Uninstall Helm release
- Test Nginx accessibility

---

## 🚀 Commands Used

### 1. Install the chart

```bash
helm install nginx-release ./nginx-chart
```

### 2. Check resources

```bash
kubectl get all
```

### 3. Access Nginx (Port Forward)

```bash
kubectl get pods
kubectl port-forward <pod-name> 8080:80
```

Visit: [http://localhost:8080](http://localhost:8080)

Or use:

```bash
minikube service nginx-release
```

---

### 4. Upgrade the release

Edit `values.yaml` (e.g. change replicaCount), then run:

```bash
helm upgrade nginx-release ./nginx-chart
```

---

### 5. Uninstall the release

```bash
helm uninstall nginx-release
```

---

## 🧹 Cleanup

```bash
kubectl delete all --selector=app.kubernetes.io/instance=nginx-release
```

---

## 🔗 Next Lab

→ TBD — could explore custom chart creation, dependencies, or Helm with CI/CD.

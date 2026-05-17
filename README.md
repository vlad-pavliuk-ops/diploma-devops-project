# Diploma DevOps Project

Microservices-based DevOps platform with automated CI/CD, Kubernetes orchestration and GitOps deployment.

## Stack

- React
- Node.js / Express
- Docker
- Kubernetes (k3d)
- GitHub Actions
- ArgoCD
- Prometheus
- Grafana

## Project Structure

```text
backend/        Node.js backend API
frontend/       React frontend application
k8s/            Kubernetes manifests
argocd/         ArgoCD application configuration
scripts/        Helper scripts
monitoring/     Monitoring configuration
docs/           Project documentation
```

## Local Run

```bash
docker compose up --build
```

Frontend:

```text
http://localhost:3000
```

Backend API:

```text
http://localhost:5000/api/hello
```

## Kubernetes Deployment

Create cluster:

```bash
./scripts/create-cluster.sh
```

Apply manifests:

```bash
kubectl apply -k k8s
```

Application URL:

```text
http://diploma.local:8080
```

## ArgoCD

Install ArgoCD:

```bash
./scripts/install-argocd.sh
```

Open UI:

```bash
kubectl port-forward svc/argocd-server -n argocd 8081:443
```

## Monitoring

Install monitoring stack:

```bash
./scripts/install-monitoring.sh
```

Open Grafana:

```bash
kubectl port-forward svc/monitoring-grafana -n monitoring 3001:80
```

## Autoscaling

Run load test:

```bash
./scripts/load-test.sh
```

Check HPA:

```bash
kubectl get hpa -n diploma
```

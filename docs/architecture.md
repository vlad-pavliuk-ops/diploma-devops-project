# Architecture

The project is a small microservices-based DevOps platform deployed in a Kubernetes cluster.

## Components

- Frontend: React application served through Nginx
- Backend: Node.js / Express REST API
- Docker: containerization for all services
- Kubernetes: container orchestration and deployment management
- GitHub Actions: CI/CD automation
- ArgoCD: GitOps continuous delivery
- Prometheus + Grafana: monitoring and visualization
- HPA: automatic pod scaling based on CPU usage

## Workflow

1. Developer pushes code changes to GitHub
2. GitHub Actions builds Docker images
3. Images are pushed to Docker Hub
4. Kubernetes manifests are updated automatically
5. ArgoCD detects changes in Git repository
6. ArgoCD synchronizes Kubernetes cluster
7. Kubernetes updates application pods automatically

## Access

Application URL:

```text
http://diploma.local:8080
```

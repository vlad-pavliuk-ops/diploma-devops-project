# GitOps with ArgoCD

The project uses ArgoCD to implement the GitOps approach.

## Principle

Git repository acts as the single source of truth for Kubernetes configuration.

ArgoCD continuously monitors the `k8s/` directory in the repository and synchronizes the cluster state with the manifests stored in Git.

## Workflow

1. CI/CD pipeline updates Kubernetes manifests
2. Changes are pushed to GitHub
3. ArgoCD detects repository changes
4. ArgoCD applies updated manifests to Kubernetes
5. Cluster state becomes synchronized automatically

## Benefits

- Automated deployments
- Version-controlled infrastructure
- Easier rollback process
- Continuous synchronization between Git and Kubernetes

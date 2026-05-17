# Rollback

The project supports rollback to a previous stable application version.

## Principle

Each Docker image is built with a unique image tag based on Git commit SHA.

Kubernetes manifests are automatically updated during the CI/CD process.

## Rollback Process

1. Select a previous stable commit or image tag
2. Revert Kubernetes manifests in Git repository
3. Push changes to GitHub
4. ArgoCD detects updated manifests
5. Kubernetes restores the previous application version

## Benefits

- Fast recovery after failed deployment
- Controlled release management
- Stable GitOps workflow

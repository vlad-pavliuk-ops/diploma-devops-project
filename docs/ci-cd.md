# CI/CD Pipeline

The project uses GitHub Actions for CI/CD automation.

## Pipeline Stages

1. Checkout source code from GitHub
2. Build Docker images for backend and frontend
3. Push Docker images to Docker Hub
4. Update Kubernetes manifests with new image tags
5. Push updated manifests back to GitHub repository

## Technologies

- GitHub Actions
- Docker
- Docker Hub

## Result

After every push to the `main` branch, the application is automatically rebuilt and prepared for deployment in Kubernetes.

# Autoscaling

The project uses Kubernetes Horizontal Pod Autoscaler (HPA).

## Purpose

HPA automatically increases or decreases the number of backend pods depending on CPU usage.

## Configuration

- Minimum replicas: 1
- Maximum replicas: 3
- Target CPU utilization: 50%

## Workflow

1. User traffic increases
2. CPU usage grows
3. HPA creates additional backend pods
4. Load is distributed between replicas
5. After load decreases, unnecessary pods are removed automatically

## Result

The application can dynamically scale depending on workload and cluster resource usage.

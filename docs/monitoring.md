# Monitoring

The project uses Prometheus and Grafana for monitoring Kubernetes infrastructure and application state.

## Components

- Prometheus collects metrics from the Kubernetes cluster
- Grafana visualizes metrics through dashboards

## Monitored Data

- Pod status
- CPU usage
- Memory usage
- Number of replicas
- Cluster resource consumption

## Purpose

Monitoring helps to:

- detect application issues
- analyze cluster performance
- observe autoscaling behavior
- monitor system stability in real time

## Access

Grafana is доступний through port forwarding:

```bash
kubectl port-forward svc/monitoring-grafana -n monitoring 3001:80
```

## Architecture Overview

EKS
└── ArgoCD (Helm install)
├── Guestbook (Kustomize)
└── Monitoring (Prometheus + Grafana)

- GitOps flow: GitHub → ArgoCD sync → EKS
- Observability: Prometheus, Grafana, Alertmanager
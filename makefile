lint:
	@echo "Linting Kubernetes manifests..."
	kubeval k8s/

terraform-init:
	terraform -chdir=infrastructure init

terraform-plan:
	terraform -chdir=infrastructure plan -out=tfplan

terraform-apply:
	terraform -chdir=infrastructure apply tfplan

sync-argocd:
	argocd app sync guestbook-dev && argocd app sync guestbook-prod && argocd app sync monitoring-stack

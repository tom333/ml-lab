

build_image_lab:
	podman build --tag custom_lab:latest -f ./Dockerfile


deploy_chart_on_k8s:
	helm repo add jupyterhub https://jupyterhub.github.io/helm-chart/
	helm repo update

	helm upgrade --cleanup-on-fail \
	--install jupyterhub jupyterhub/jupyterhub \
	--namespace jhub \
	--create-namespace \
	--version=1.2.0 \
	--values jupyter-config.yaml

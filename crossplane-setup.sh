# 1. Verify the Killercoda cluster is ready
kubectl get nodes

# 2. Add the Crossplane Helm repo and install Crossplane
helm repo add crossplane-stable https://charts.crossplane.io/stable
helm repo update
helm install crossplane crossplane-stable/crossplane \
  --namespace crossplane-system \
  --create-namespace \
  --wait

# 3. Verify Crossplane pods are Running
kubectl get pods -n crossplane-system

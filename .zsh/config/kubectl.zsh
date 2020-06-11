export KUBECONFIG="$HOME/.kube/k3s:$HOME/.kube/config"

for config in $(ls $HOME/.kube/clusters); do
  export KUBECONFIG="$KUBECONFIG:$HOME/.kube/clusters/$config";
done

function ks --description 'Get and decode a secret value from Kubernetes'
  set -l cluster_name $argv[1]
  set -l secret_key $argv[2]

  if test (count $argv) -ne 2
    echo "Usage: ks <cluster_name> <secret_key>"
    return 1
  end

  kubectl get secrets $cluster_name -o json | jq -r $secret_key | base64 --decode
end

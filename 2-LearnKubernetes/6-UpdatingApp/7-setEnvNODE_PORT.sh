echo "for this command use '.' instead of 'sh' "
echo "sh will run the command in a new environment and destroy it, losing the ENV var"
#
export NODE_PORT=$(kubectl get services/kubernetes-bootcamp -o go-template='{{(index .spec.ports 0).nodePort}}')
echo NODE_PORT=$NODE_PORT
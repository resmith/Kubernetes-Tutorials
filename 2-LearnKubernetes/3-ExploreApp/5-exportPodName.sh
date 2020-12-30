echo "for this command - use '. 5-exportPodName.sh not 'sh 6-exportPodName.sh'"
echo "bash will run the command in a new environment and destroy it, losing the ENV var"
export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
#
echo Name of the Pod: $POD_NAME
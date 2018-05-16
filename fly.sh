fly -t flintstone set-pipeline \
	--pipeline $1 \
	--config pipeline.yml \
	--var "kube_conf=$(kubectl config view --flatten)" \
        -l $2

#TODO: extract variables

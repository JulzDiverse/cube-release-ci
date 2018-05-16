fly -t flintstone set-pipeline \
	--pipeline $1 \
	--config pipeline.yml \
	--var "cube_conf=$(kubectl config view --flatten)" \
        -l $2

#TODO: extract variables

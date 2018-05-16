#!/bin/bash

readonly PIPELINE_NAME=$1
readonly PIPELINE_CONFIG_FILE=$2
readonly ENV_PROPERTIES=$3

fly -t flintstone set-pipeline \
	--pipeline $PIPELINE_NAME \
	--config $PIPELINE_CONFIG_FILE \
	--var "kube_conf=$(kubectl config view --flatten)" \
        --load-vars-from $ENV_PROPERTIES

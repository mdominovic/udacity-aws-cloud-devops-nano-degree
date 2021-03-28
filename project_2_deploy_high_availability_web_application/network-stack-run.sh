#!/bin/bash

STACK_NAME="udacity-nd-project-2-dhawaucf-networks"
MODE=$1

if [[ "$MODE" == "create" ]]; then
    aws cloudformation create-stack \
    --stack-name $STACK_NAME \
    --template-body file://network-configuration.yml \
    --parameters file://network-parameters.json \
    --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
    --region=us-west-2;
elif [[ "$MODE" == "update" ]]; then
    aws cloudformation update-stack \
    --stack-name $STACK_NAME \
    --template-body file://network-configuration.yml \
    --parameters file://network-parameters.json;
elif  [[ "$MODE" == "delete" ]]; then
    aws cloudformation delete-stack \
    --stack-name $STACK_NAME;
else
    echo "Wrong argument provided, possible options are:" 
    echo "      * create"
    echo "      * update"
    echo "      * delete"
fi

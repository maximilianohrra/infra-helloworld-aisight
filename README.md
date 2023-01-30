# devops-challenge-helloworld
# AISIGHT Maximiliano Herrera

## Introduction
This repo includes tf files to set up an AWS EC2 instance with minimum requisites

## Goals
Creat the host in which the "hello world" will be deployed.

# Run locally easily

export AWS_ACCESS_KEY_ID="example123ASDLK="
export AWS_SECRET_ACCESS_KEY="example123ASDLK=example123ASDLK="
terraform init
terraform plan -var "access_key=${AWS_ACCESS_KEY_ID}"  -var "secret_key=${AWS_SECRET_ACCESS_KEY}"
terraform plan -var "access_key=${AWS_ACCESS_KEY_ID}"  -var "secret_key=${AWS_SECRET_ACCESS_KEY}"


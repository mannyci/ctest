# Cluster Test
Cluster test repo

## Tools and services used
1. Terraform -To deploy the infra
2. Ansible - To install/conigure
3. Docker tu build/run the container
4. AWS infra provider

## How to
* To deploy the infrastructure
** Initalize Terraform
  ```terraform init -get```
** Validate the code/modules
  ```terraform validate```
** Deploy infra
  ```terraform apply -auto-approve```

## To do
* Terraform state to S3
* Build the container with Ansible
* Start the container and validate


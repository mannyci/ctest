# Cluster Test
Cluster test repo

## Tools and services used
1. Terraform -To deploy the infra
2. Ansible - To install/conigure
3. Docker tu build/run the container
4. AWS infra provider
5. Terraform and ansible assumes the private and pub keys are in user's home direcory where being run. `~/.ssh/id_rsa` and `~/.ssh/id_rsa.pub`
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
* Start the container and validate


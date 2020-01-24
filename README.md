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
1. Initalize Terraform
  ```terraform init -get```
2. Validate the code/modules
  ```terraform validate```
3. Deploy infra
  ```terraform apply -auto-approve```
* Docker image is built by Ansible from the Dockerfile in root repo path

## To do
* Terraform state to S3
* Start the container and validate

## Pros & Cons
* The infra is immutable
* Its redeployed on top of fresh infra everytime it needs to be redeployed
* This approach is good for simple workflow but does not ensure state of the infra
* Better to do with a CI or ASG with a LC
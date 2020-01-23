provider "aws" {
  region  = "eu-west-1"
  version = "~> 2.0"
  profile = "manas"
}

variable "aws_account" {
  type = string
}

variable "env" {
  type = string
}

variable "instance_ami_filter" {
  type = string
}

module "infra" {
  source    = "./modules/infra/"
  env       = "${var.env}"
  instance_ami_filter = "${var.instance_ami_filter}"
}
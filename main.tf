provider "aws" {
  region  = "eu-west-1"
  version = "~> 2.0"
  profile = ""    #Profile goes here or sets to default
}

variable "aws_account" {
  type = string
  description = "Account id"
}

variable "env" {
  type = string
}

variable "instance_ami_filter" {
  type = string
}

variable "instance_type" {
  type = string
  description = "Instance type"
}


module "infra" {
  source    = "./modules/infra/"
  env       = "${var.env}"
  instance_ami_filter = "${var.instance_ami_filter}"
  instance_type = "${var.instance_type}"
}
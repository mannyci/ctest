variable "instance_ami_filter" {
  description = "The source ami name"
  type        = string
}

variable "env" {
  description = "Environment name"
  type        = string
}

variable "instance_type" {
  type = string
  description = "Instance type"
}
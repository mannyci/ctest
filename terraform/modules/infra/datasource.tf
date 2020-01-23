data "aws_vpc" "default" {
  default = true
}

data "aws_ami" "ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["${var.instance_ami_filter}"]
  }
  filter {
      name   = "virtualization-type"
      values = ["hvm"]
  }
  owners = ["099720109477"]
}
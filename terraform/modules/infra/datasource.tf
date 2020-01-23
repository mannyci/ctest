data "aws_vpc" "default" {
  default = true
}

data "aws_subnet_ids" "all" {
  vpc_id = data.aws_vpc.default.id
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
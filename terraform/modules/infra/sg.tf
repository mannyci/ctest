resource "aws_security_group" "instance" {
  name_prefix = var.env
  description = "${var.env}-instance"
  vpc_id      = data.aws_vpc.default.id

  tags = {
    Name      = "${var.env}-instance"
    terraform = "true"
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_security_group_rule" "ingress-ssh" {
  type      = "ingress"
  from_port = 22
  to_port   = 22
  protocol  = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.instance.id}"
}
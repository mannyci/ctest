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

resource "aws_security_group_rule" "ingress-36666" {
  type      = "ingress"
  from_port = 36666
  to_port   = 36666
  protocol  = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.instance.id}"
}

resource "aws_security_group_rule" "egress-all" {
  type      = "egress"
  from_port = 0
  to_port   = 0
  protocol  = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.instance.id}"
}
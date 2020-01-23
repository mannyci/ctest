resource "aws_instance" "ec2_instance" {
  ami           = data.aws_ami.ami.id
  instance_type = "t2.medium"
  subnet_id     = tolist(data.aws_subnet_ids.all.ids)[0]
  key_name      = "${aws_key_pair.ec2_key.id}"
  vpc_security_group_ids = ["${aws_security_group.instance.id}"]
  iam_instance_profile = "${aws_iam_instance_profile.instance_profile.name}"
  associate_public_ip_address = true
}

resource "aws_key_pair" "ec2_key" {
  key_name = "instance_pub_key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
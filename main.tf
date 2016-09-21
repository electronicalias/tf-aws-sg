resource "aws_security_group" "${var.sg_name}" {
  name = "${var.sg_name}"
  description = "${var.description}"

  ingress {
      from_port = 0
      to_port = 65535
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "allow_all"
  }
}

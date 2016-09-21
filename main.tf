resource "aws_security_group" "mod" {
  name = "${var.sg_name}"
  description = "${var.sg_description}"

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

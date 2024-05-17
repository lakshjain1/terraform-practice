resource "aws_security_group" "allow_all_traffic" {
  name = "var.security_group"

  ingress {
    description = "allow_all"
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = var.sg_cidr
  }

  egress {
    description = "allow_all"
    from_port   = 0
    to_port     = 0
    protocol    = "-1" #all protocol
    cidr_blocks = var.sg_cidr
  }

}


resource "aws_security_group" "k8-allow-all" {
  name        = "k8-allow-all"
  description = "Allow All inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.k8-vpc.id

  tags = {
    Name = "k8-allow-all"
  }

    ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

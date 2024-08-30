resource "aws_vpc" "k8-vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "k8-vpc"
  }
}
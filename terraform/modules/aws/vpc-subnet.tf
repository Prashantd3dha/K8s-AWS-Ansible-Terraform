resource "aws_subnet" "k8-public-subnet" {
  vpc_id     = aws_vpc.k8-vpc.id
  cidr_block = var.vpc_subnet_cidr
  availability_zone = var.vpc_subnet_availability_zone

  tags = {
    Name = "k8-public-subnet"
  }
}
resource "aws_internet_gateway" "k8-igw" {
  vpc_id = aws_vpc.k8-vpc.id

  tags = {
    Name = "k8-igw"
  }
}
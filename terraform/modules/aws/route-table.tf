resource "aws_route_table" "k8-route-table" {
  vpc_id = aws_vpc.k8-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.k8-igw.id
  }

  tags = {
    Name = "k8-route-table"
  }
}
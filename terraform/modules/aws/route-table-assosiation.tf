resource "aws_route_table_association" "public-subnet-asso" {
  subnet_id      = aws_subnet.k8-public-subnet.id
  route_table_id = aws_route_table.k8-route-table.id
}
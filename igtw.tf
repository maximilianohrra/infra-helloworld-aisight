# Internet Gateway allows communication between instances in the VPC and the internet
resource "aws_internet_gateway" "example" {
  vpc_id = aws_vpc.example.id
}

#AWS routing table with internet gateway route. Connects VPC to internet.
resource "aws_route_table" "example" {
  vpc_id = aws_vpc.example.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.example.id
  }
}

#Code associates subnet with AWS routing table.
resource "aws_route_table_association" "example" {
  subnet_id      = aws_subnet.example.id
  route_table_id = aws_route_table.example.id
}
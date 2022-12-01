resource "aws_route_table" "route" {
  vpc_id = aws_vpc.Terra-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Terraform-IGW.id
  }

  route {
    ipv6_cidr_block = "::/0"
    gateway_id = aws_internet_gateway.Terraform-IGW.id
  }

  tags = {
    Name = "Route to internet"
  }
}
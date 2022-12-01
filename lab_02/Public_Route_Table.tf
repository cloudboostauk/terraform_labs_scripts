resource "aws_route_table" "cba_public_rt" {
  vpc_id = aws_vpc.cba_vpc.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.cba_igw.id
  }

  tags = {
    "Name" = "ApachePublicRT"
  }
  
}
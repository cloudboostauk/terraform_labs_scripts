resource "aws_internet_gateway" "Terraform-IGW" {
  vpc_id = aws_vpc.Terra-vpc.id
}

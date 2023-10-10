resource "aws_security_group" "cba_tf_sg" {
 name        = "cba_tf_sg"
 description = "allow all traffic"
 vpc_id = aws_vpc.cba_vpc.id
 ingress {
   from_port  = 22
   to_port    = 22
   protocol   = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
 }
 ingress {
   from_port  = 80
   to_port    = 80
   protocol   = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
 }
 egress {
   from_port  = 0
   to_port    = 0
   protocol   = "-1"
   cidr_blocks = ["0.0.0.0/0"]
 }
 tags = {
   name = "CBAterraformSG"
 }
}

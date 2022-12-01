variable "region" {
  default = "eu-west-2"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_ami" {
  default = "use a linux ami id from your aws console"
}


variable "vpc_id" {
  default = ""
}


variable "key_name" {
  default = "use a key-pair name from your aws console"
}
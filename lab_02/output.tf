output "web_instance_ip" {
  description = "Web instance complete URL"
  value = join("", ["http://", aws_instance.cba_tf_instance.public_ip])
}
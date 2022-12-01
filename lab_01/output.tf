output "web_instance_ip" {
    value = aws_instance.cba_tf_instance.public_ip
}


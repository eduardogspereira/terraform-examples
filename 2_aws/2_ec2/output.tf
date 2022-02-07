output "ip_ec2" {
  value = aws_instance.test.public_ip
}

output "ec2-public-ip" {
  value = aws_instance.test[*].public_ip
}

resource aws_instance "test" {
  count           = 1
  ami             = data.aws_ami.amazon_linux.id
  instance_type   = "t2.micro"
  security_groups = [aws_security_group.default.name]
  key_name        = aws_key_pair.deployer.key_name

  provisioner "remote-exec" {
    on_failure = continue

    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = tls_private_key.deployer_key.private_key_pem
    }

    inline = [
      "sudo yum update -y",
      "sudo yum install httpd -y",
      "sudo systemctl start httpd",
      "sudo systemctl enable httpd",
      "sudo sh -c 'echo \"Stack name: ${local.stack}\" > /var/www/html/index.html'"
    ]
  }

  lifecycle {
    create_before_destroy = true
  }
}

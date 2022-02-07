resource aws_instance "test" {
  ami = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
  security_groups = [aws_security_group.default.name]
  user_data = file("./scripts/install-apache.sh")
}

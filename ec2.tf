# Creating EC2 Instance 
resource "aws_instance" "splunk-server" {
  ami           = "ami-06c68f701d8090592"
  instance_type = "t2.small"
  subnet_id     = aws_subnet.public1.id
  root_block_device {
    volume_size = 25
  }

  # Security_groups = [aws_security_group.sg-demo.name]
  vpc_security_group_ids = [aws_security_group.splunk-sg.id]
  key_name               = aws_key_pair.aws_key.key_name
  user_data              = file("server.sh")
  tags = {
    Name = "splunk-app-inst"
  }
}
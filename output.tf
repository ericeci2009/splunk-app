# VPC ID
output "vpc_id" {
  value = aws_vpc.splunk-vpc.id
}

# Security Group ID
output "splunk-sg-id" {
  value = aws_security_group.splunk-sg.id
}

# Ec2 Public IP
output "ec2_public_id" {
  value = aws_instance.splunk-server.public_ip
}
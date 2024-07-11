# Private Subnet 1
resource "aws_subnet" "private1" {
  availability_zone = "us-east-1a"
  cidr_block        = "10.10.3.0/24"
  vpc_id            = aws_vpc.splunk-vpc.id
  tags = {
    Name = "splunk-private-subnet-1a"
  }
}
# Private Sub 2
resource "aws_subnet" "private2" {
  availability_zone = "us-east-1b"
  cidr_block        = "10.10.4.0/24"
  vpc_id            = aws_vpc.splunk-vpc.id
  tags = {
    Name = "splunk-private-subnet-1b"
  }
}
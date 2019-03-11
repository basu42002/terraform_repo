resource "aws_subnet" "bas-pdx-pub-subnet-a" {
  vpc_id                  = "${aws_vpc.bas-pdx-vpc.id}"
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "us-west-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "bas-pdx-pub-subnet-a"
  }
}

resource "aws_subnet" "bas-pdx-prv-subnet-a" {
  vpc_id                  = "${aws_vpc.bas-pdx-vpc.id}"
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-west-2a"
  map_public_ip_on_launch = false

  tags = {
    Name = "bas-pdx-prv-subnet-a"
  }
}

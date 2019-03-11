resource "aws_route_table" "bas-pdx-pub-rtb1" {
  vpc_id = "${aws_vpc.bas-pdx-vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.bas-pdx-gw.id}"
  }

  tags = {
    Name = "bas-pdx-pub-rtb1"
  }
}

resource "aws_route_table" "bas-pdx-prv-rtb1" {
  vpc_id = "${aws_vpc.bas-pdx-vpc.id}"

  tags = {
    Name = "bas-pdx-prv-rtb1"
  }
}

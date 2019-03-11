resource "aws_internet_gateway" "bas-pdx-gw" {
  vpc_id = "${aws_vpc.bas-pdx-vpc.id}"

  tags = {
    Name = "bas-pdx-gw"
  }
}

resource "aws_route_table_association" "bas-pdx-rts1" {
  subnet_id      = "${aws_subnet.bas-pdx-pub-subnet-a.id}"
  route_table_id = "${aws_route_table.bas-pdx-pub-rtb1.id}"

  #tags = { Name = "bas-pdx-rts1" } #there cannot be tags for assocation
}

resource "aws_route_table_association" "bas-pdx-rts2" {
  subnet_id      = "${aws_subnet.bas-pdx-prv-subnet-a.id}"
  route_table_id = "${aws_route_table.bas-pdx-prv-rtb1.id}"
}

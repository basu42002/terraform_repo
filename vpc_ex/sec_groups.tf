resource "aws_security_group" "bas-pdx-inbound-all"
{
  name = "bas-pdx-inbound-all"
  description = "Allow TLS inbound traffic"
  vpc_id = "${aws_vpc.bas-pdx-vpc.id}"
  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["0.0.0.0/0"]# add your IP address here
  }
}

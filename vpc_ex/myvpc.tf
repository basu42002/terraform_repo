resource "aws_vpc" "bas-pdx-vpc" {
  cidr_block = "10.0.0.0/16"

  #instance_tenancy = "shared"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "bas-pdx-vpc"
  }
}

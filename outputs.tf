data "aws_ip_ranges" "myiprange"{
regions = ["${var.AWS_REG}"]
services = ["ec2"]
}

#This block is for output
output "for_mypublicIp"
{
value = "${aws_instance.myfirstinstance.public_ip}"
}

#This block is for datasource otput:
output "for_datasource"
{
value = "${data.aws_ip_ranges.myiprange.cidr_blocks}"
}

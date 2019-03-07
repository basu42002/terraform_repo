# This block is for AWSkeypair resource
resource "aws_key_pair" "just_keypair"{
key_name = "mas-sjc-2019"
public_key = "${file("${var.PUBKEY}")}"
}

#THIS block is for Aws_instance
resource "aws_instance" "myfirstinstance"{
ami = "${lookup(var.AMI, var.AWS_REG)}"
instance_type = "${var.INSTANCE_TYPE}"
vpc_security_group_ids = ["${var.VPC_SECURITY_GROUP_IDS}"]
subnet_id = "${var.SUBNET_ID}"
key_name = "${aws_key_pair.just_keypair.key_name}"
#public_ip = ""

# This block is for file provisioner and connection provisioner
provisioner "file"{
source = "terraform.tfstate"
destination = "/home/ubuntu/tfstate"
}

# This block is for remote-exec provisioner
provisioner "remote-exec"{
inline = ["chmod ugo+x /home/ubuntu/tfstate"]
}

#This block is for local-exec provisioner
provisioner "local-exec"
{
command = "echo ${aws_instance.myfirstinstance.private_ip} >> privateIp"
}

# This block is for connection provisioner
connection{
user = "${var.USER}"
private_key = "${file("${var.PRIV_KEY}")}"
}
}


variable "AWS_KEY" {}
variable "AWS_KEYID" {}
variable "AWS_TOKEN" {}
variable "AWS_REG" {
	default = "us-west-2"
}
variable "AMI" {
type = "map"
default = {
us-west-1 = "ami-0960276af02787fc8"
us-west-2 = "ami-08692d171e3cf02d6"
}
}
variable "INSTANCE_TYPE" {
default = "t2.micro"
}
variable "VPC_SECURITY_GROUP_IDS" {default = "sg-0f66b8e3bd46364ac"}
variable "SUBNET_ID" {
default = "subnet-69e6cd10"
}

variable "AWS_SEC" {
default = "sg-0f66b8e3bd46364ac"
}

variable "PUBKEY" {
default = "/Users/bhasker_kaveti/keys/mas-sjc-2019.pub"
}

variable "PRIV_KEY"{
default = "/Users/bhasker_kaveti/keys/mas-sjc-2019.pem"
}
variable "USER"
{
default = "ubuntu"
}

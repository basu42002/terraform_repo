# This file is the credentials file
provider "aws" {
  access_key = "${var.AWS_KEY}"
  secret_key = "${var.AWS_KEYID}"
  token      = "${var.AWS_TOKEN}"
  region     = "${var.AWS_REG}"
}

provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "/Users/reanemployee/.aws/credentials"
  profile                 = "puneeth_personal"
  version                 = "~> 1.1"
}

resource "aws_instance" "test_instance" {
  count         = 1
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"

  tags {
    Name = "test-instance"
  }
}

#----AWS----

provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
}

resource "aws_instance" "linux" {
  instance_type                 = "t2.micro"
  ami                           = "ami-0885b1f6bd170450c"
  key_name                      = "burgundy"
  subnet_id                     = "subnet-0ac4b135709f74897"
  monitoring                    = false
  associate_public_ip_address   = true
  user_data                     = file("ansible.sh")

  tags = {
    Name   = "CI UbuntuA"
    Owner  = "flamez"
  }
}

resource "aws_instance" "linux2" {
  instance_type                 = "t2.micro"
  ami                           = "ami-0885b1f6bd170450c"
  key_name                      = "burgundy"
  subnet_id                     = "subnet-0ac4b135709f74897"
  monitoring                    = false
  associate_public_ip_address   = true

  tags = {
    Name   = "CI UbuntuM"
    Owner  = "flamez"
  }
}

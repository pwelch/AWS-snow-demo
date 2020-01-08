provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "	ami-00a208c7cdba991ea"
  instance_type = "t2.micro"
}

# main.tf

# AWS_ACCESS_KEY_ID="anaccesskey"
# AWS_SECRET_ACCESS_KEY="asecretkey"
# AWS_DEFAULT_REGION="us-east-2"
provider "aws" {
  region = "us-east-1"
}

# https://cloud-images.ubuntu.com/locator/ec2/
resource "aws_instance" "example" {
  ami           = "ami-00a208c7cdba991ea"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.us-east-1d-public.id
}

resource "aws_vpc" "example" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
}

resource "aws_subnet" "us-east-1d-public" {
  vpc_id            = aws_vpc.example.id
  cidr_block        = "10.0.1.0/25"
  availability_zone = "us-east-1d"
}

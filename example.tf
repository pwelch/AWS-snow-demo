
# AWS_ACCESS_KEY_ID="anaccesskey"
# AWS_SECRET_ACCESS_KEY="asecretkey"
# AWS_DEFAULT_REGION="us-east-2"
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-00a208c7cdba991ea"
  instance_type = "t2.micro"
}

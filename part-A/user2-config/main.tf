provider "aws" {
  region = "us-west-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

module "webserver-user2" {
  source     = "../modules/webserver"
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/16"
  ami        = "ami-00142eb1747a493d9"
  # Remember, select an AMI that exists in your AWS region.
  # If in doubt, use the AMI above (which is Amazon Linux) 
  # and the us-west-2 region for this user.
  instance_type  = "t2.micro"
  webserver_name = "User 2's"
}

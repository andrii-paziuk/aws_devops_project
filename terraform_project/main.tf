resource "aws_vpc" "Project_ec2_vpc" {
  cidr_block = "10.0.0.0/16"
}


resource "aws_instance" "Project_ec2" {
  count         = var.worker_count
  ami           = "ami-0f34c5ae932e6f0e4"
  instance_type = "t2.micro"
  tags = {
    Name = "Project_ec2"
  }
}

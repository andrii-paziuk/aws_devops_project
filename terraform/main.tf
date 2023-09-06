resource "aws_vpc" "Project_ec2_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_security_group" "project_sec_group" {
  name        = "project_sec_group"
  description = "project_sec_group"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] // Allow SSH from anywhere
  }
}

resource "aws_instance" "project_ec2" {
  count                  = var.worker_count
  ami                    = "ami-0f34c5ae932e6f0e4"
  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  vpc_security_group_ids = [aws_security_group.project_sec_group.id]
  tags = {
    Name = "project_ec2"
  }
}

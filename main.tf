# Declaring the resource block aws_instance
resource "aws_instance" "my-machine" {
  # Declaring the argument ami
  ami = var.ami
  # Declaring the argument instance_type
  instance_type = var.instance_type
  # Tagging the instances
  tags = {
    Name = "ec2-instance-${terraform.workspace}"
  }
}
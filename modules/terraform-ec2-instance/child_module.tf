resource "aws_ec2_instance" "my_instance" {
ami = var.my_ami
instance_type = var.my_instance_type
environment = var.my_environment
project_name = var.my_first_project

tags = {
  name = "web-instance" 
}
}


variable "my_ami" {
}
variable "my_instance_type" {
}
variable "my_environment" {
}
variable "my_first_project" {
}
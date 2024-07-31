resource "aws_instance" "my_instance" {
ami = var.my_ami
instance_type = var.my_instance_type


tags = {
  Name        = "web-instance"
  Environment = var.my_environment
  Project     = var.my_first_project

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
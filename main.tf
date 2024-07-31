terraform {
  cloud {
    organization = "donis_cloud"

    workspaces {
      name = "ec2_instance"
    }
  }
}

module "my_web_instance" {
    source = "./modules/terraform-ec2-instance"
    my_ami = var.first_ami
    instance_type = var.first_instance_type
    environment = var.first_environment
    project_name = var.my_first_project
  
}

variable "first_ami" {
    description = "I need ami ID"
    type = string
    default = "ami-08c90f7460d6e8377" # my real AMI ID 
  
}
variable "first_instance_type" {
    type = string
    default = "t2.micro"
   
 }

variable "first_environment" {
    type = string
    default = "dev"
   
 }
variable "my_first_project" {
  type = string
  default = "the project"
}
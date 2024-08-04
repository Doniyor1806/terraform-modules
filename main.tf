terraform {
  cloud {
    organization = "donis_cloud"

    workspaces {
      name = "ec2_instance"
    }
  }
}

provider "aws" {} #Yangi qo'shildi

module "my_web_instance" {
  source           = "./modules/terraform-ec2-instance/"
  my_ami           = var.first_ami
  my_instance_type = var.first_instance_type
  my_environment   = var.first_environment
  my_first_project = var.my_first_project

}

variable "first_ami" {
  description = "I need ami ID"
  type        = string
  default     = "ami-08c90f7460d6e8377" # my real AMI ID 

}
variable "first_instance_type" {
  type    = string
  default = "t2.micro"

}

variable "first_environment" {
  description = "List of allowed environments"
  type        = list(string)
  default     = ["dev", "test", "prod"]

}
variable "my_first_project" {
  type    = string
  default = "the project"
}

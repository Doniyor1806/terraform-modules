terraform {
  cloud {
    organization = "donis_cloud"

    workspaces {
      name = "ec2_instance"
    }
  }
}

resource "aws_ec2_instance" "default" {
name = var.instance_name
instance_type = var.instance_type

  
}


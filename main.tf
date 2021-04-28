terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "osandarajapakse"

    workspaces {
      name = "udemy_test_osanda"
    }
  }
}

provider "aws" {
	region = "us-east-1"
	access_key = var.access_key 
	secret_key = var.secret_key
}

resource "aws_instance" "backend_ec2" {
	ami = "ami-0742b4e673072066f"
	instance_type = "t2.small"
}

terraform {
  required_providers {
      aws = {
          source ="hashicorp/aws"
          version = "3.7.0"
      }
  }
}

provider "aws" {
    region = "us-east-2"
  
}

module "webserver" {
  source = "./modules/ec2"
  
  servername = "terraformtask"
  size = "t3.micro"
}
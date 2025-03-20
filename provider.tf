terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  assume_role {
    role_arn = var.role_to_assume
  }
}
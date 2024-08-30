terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
  shared_credentials_files = ["C:/Users/hp/.aws/credentials"]
  shared_config_files      = ["C:/Users/hp/.aws/conf"]
}
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
  shared_credentials_files = [var.shared_credential]
  shared_config_files      = [var.shared_config]
}

module "aws" {
  source = "./modules/aws"
}

resource "local_file" "ansible_hosts" {
  filename = "../inventory.ini"
  content = templatefile(
    "../hosts.ini",
    {
      master = module.aws.master_instance_public_ip
      worker = module.aws.worker_instance_public_ip
    }
  )
}
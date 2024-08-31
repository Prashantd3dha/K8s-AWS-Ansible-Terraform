variable "vpc_cidr" {
  type        = string
  description = "Public VPC CIDR values"
  default     = "10.0.0.0/16"
}

variable "vpc_subnet_cidr" {
  type        = string
  description = "Public Subnet CIDR values"
  default     = "10.0.0.0/16"
}

variable "vpc_subnet_availability_zone" {
  type        = string
  default     = "ap-south-1b"
}

variable "ssh_key_name" {
  type        = string
  description = "ssh key name"
  default     = "redhat-key-aws"
}

variable "node_count" {
  type        = number
  description = "Worker node count"
  default     = 2
}
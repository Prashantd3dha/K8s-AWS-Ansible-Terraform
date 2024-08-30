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
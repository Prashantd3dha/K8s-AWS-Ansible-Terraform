output "master_instance_public_ip" {
  description = "ID of the EC2 instance"
  value       = module.aws.master_instance_public_ip
}

output "worker_instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = module.aws.worker_instance_public_ip
}
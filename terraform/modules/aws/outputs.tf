// master node output
output "master_instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.k8-master.id
}

output "master_instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.k8-master.public_ip
}


// worker node output
output "worker_instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.k8-node.*.id
}

output "worker_instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.k8-node.*.public_ip
}

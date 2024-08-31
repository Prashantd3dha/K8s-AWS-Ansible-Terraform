resource "aws_instance" "k8-master" {
  ami           = "ami-022ce6f32988af5fa"
  instance_type = "t2.medium"

  key_name = var.ssh_key_name
  subnet_id = aws_subnet.k8-public-subnet.id
  vpc_security_group_ids = [aws_security_group.k8-allow-all.id]
  private_ip = "10.0.0.11"
  associate_public_ip_address = true
  
  metadata_options{
    http_tokens = "required"
  }

  root_block_device{
    volume_size = 30
  } 
  
  tags = {
    Name = "k8-master"
  }
}

resource "aws_instance" "k8-node" {
  ami           = "ami-022ce6f32988af5fa"
  instance_type = "t2.micro"
  count = var.node_count

  key_name = var.ssh_key_name
  subnet_id = aws_subnet.k8-public-subnet.id
  vpc_security_group_ids = [aws_security_group.k8-allow-all.id]
  private_ip = "10.0.0.${12 + count.index}"
  associate_public_ip_address = true
  
  metadata_options{
    http_tokens = "required"
  }

  root_block_device{
    volume_size = 30
  } 
  
  tags = {
    Name = "k8-node${1+count.index}"
  }
}
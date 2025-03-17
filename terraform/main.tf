provider "aws" {
  region = var.region
}

data "aws_subnet" "existing_public" {
  id = "subnet-09acf0c86ccc923bd"
}

resource "aws_instance" "builder" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.builder_key.key_name
  subnet_id              = data.aws_subnet.existing_public.id
  vpc_security_group_ids = [aws_security_group.builder_sg.id]

  tags = {
    Name = "${var.prefix}-builder"
  }

  # provisioner "remote-exec" {
  #   inline = [
  #     "sleep 60",
  #     "sudo apt-get update",
  #     "sudo apt-get install -y docker.io",
  #     "sudo systemctl start docker",
  #     "sudo systemctl enable docker",
  #     "sudo usermod -aG docker ubuntu",
  #     "sudo curl -L 'https://github.com/docker/compose/releases/download/v2.20.2/docker-compose-$(uname -s)-$(uname -m)' -o /usr/local/bin/docker-compose",
  #     "sudo chmod +x /usr/local/bin/docker-compose",
  #     "docker-compose --version"
  #   ]

  #   connection {
  #     type        = "ssh"
  #     user        = "ubuntu"
  #     private_key = tls_private_key.ssh_key.private_key_pem
  #     host        = self.public_ip
  #     timeout     = "5m"
  #   }
  # }
}

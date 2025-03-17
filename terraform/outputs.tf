output "private_key_pem" {
  value     = tls_private_key.ssh_key.private_key_pem
  sensitive = true
}

output "builder_public_ip" {
  value = aws_instance.builder.public_ip
}
output "security_group_id" {
  description = "The security group ID for reference"
  value       = aws_security_group.builder_sg.id
}

output "public_dns" {
  value = aws_instance.http_server.public_dns
}

output "server_details" {
  value = aws_instance.http_server
}

output "default_vpc" {
  value = aws_default_vpc.default_vpc.id
}
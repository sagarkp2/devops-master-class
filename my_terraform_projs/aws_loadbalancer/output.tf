output "public_dns" {
  value = values(aws_instance.http_servers).*.id
}

output "server_details" {
  value = aws_instance.http_servers
}

output "default_vpc" {
  value = aws_default_vpc.default_vpc.id
}

output "elb_dns" {
  value = aws_elb.elb
}
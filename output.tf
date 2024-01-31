output "pip" {
  value = aws_lightsail_instance.serve1.public_ip_address
}
output "privip" {
value = aws_lightsail_instance.serve1.private_ip_address  
}

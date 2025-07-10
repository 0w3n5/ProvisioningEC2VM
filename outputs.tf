# outputs your variables

# aws instance web is EC2
# public_ip calls the ip variable

output "instance_public_ip" {
  value = aws_instance.web.public_ip         # After creation, show the instance's public IP in terminal
}

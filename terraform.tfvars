# terraform variables

aws_region        = "eu-west-2"              # Change to your region
aws_profile       = "default"                # Change if you're using a named AWS CLI profile
ami_id            = "ami-0abcdef1234567890"  # ✅ Replace with an actual AMI ID for your region
key_name          = "my-ec2-keypair"         # ✅ Replace with the name of your existing AWS key pair
subnet_id         = "subnet-0123456789abcdef" # ✅ Must be in a public subnet of your VPC
security_group_id = "sg-0123456789abcdef0"   # ✅ Must allow inbound SSH (port 22)
environment       = "dev"                    # Optional: dev, staging, prod etc.
project           = "secure-ec2"             # Optional: your project tag
tags = {
  Owner      = "you"
  Department = "IT"
}


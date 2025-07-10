# terraform variables

ami_id             = "ami-08e1e65c244107bb6"   # Public or custom AMI ID to launch the instance
instance_type      = "t3.micro"                # Budget-friendly free-tier eligible type
key_name           = "my-keypair"              # Name of your SSH key pair (already created in AWS)
subnet_id          = "subnet-0a1b2c3d4e5f6g7h" # Subnet ID to place instance in (must exist in AWS)
security_group_id  = "sg-0123456789abcdef0"    # Security group allowing access to your instance
environment        = "dev"                     # Tag for deployment stage (dev, prod, etc.)

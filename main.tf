# Core infrastructure configuration

resource "aws_instance" "web" {              # Define an AWS EC2 instance resource named "web"
  ami           = var.ami_id                # Use the AMI ID passed via a variable
  instance_type = var.instance_type         # Use the instance type passed via a variable (e.g., t3.micro)
  key_name      = var.key_name              # SSH key pair name for secure access

  subnet_id     = var.subnet_id             # Place the instance in a specified subnet
  vpc_security_group_ids = [                # Attach one or more security groups
    var.security_group_id                   # Use a variable to assign the security group
  ]

  tags = {                                  # Add tags to the instance (good for cost allocation, org)
    Name        = "SecureWebInstance"       # Name tag
    Environment = var.environment           # Environment tag (e.g., dev, staging, prod)
  }
}

# Core infrastructure configuration


# Configure terraform itself

terraform {
  required_provider {
    aws = { source = "hashicorp/aws", version = "~> 5.0" }
  ]
}

# Selects teh aws region from variables.tf

provider "aws" {
  region = var.aws_region
}

# Create the EC2 instance
# web is how we call EC2
# instance type called from variables.tf

resource "aws instance" "web" {
  ami = var.ami_id
  instance_type = var.instance_type
  tags = {
  Name = "tf-starter-instance"
  }
}
